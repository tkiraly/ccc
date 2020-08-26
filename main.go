package main

import (
	"io/ioutil"
	"log"
	"net/http"
	"os"
	"path"
	"regexp"
	"strings"
)

const basepath = "./toolchains"

func main() {
	err := os.RemoveAll(basepath)
	if err != nil {
		log.Fatalln(err)
	}
	archlist, err := http.Get("https://toolchains.bootlin.com/downloads/releases/toolchains/")
	if err != nil {
		log.Fatalln(err)
	}
	htmlcontent, err := ioutil.ReadAll(archlist.Body)
	if err != nil {
		log.Fatalln(err)
	}
	archlist.Body.Close()
	var re = regexp.MustCompile(`(?m)f=\"([^/].*)/\"`)
	matches := re.FindAllSubmatch(htmlcontent, -1)
	var architectures []string
	for _, match := range matches {
		architectures = append(architectures, string(match[1]))
	}
	re = regexp.MustCompile(`(?m)f=\"(.*\.bz2)\"`)
	err = os.Mkdir(basepath, 0777)
	if err != nil {
		log.Fatalln(err)
	}
	latest, err := os.Create(path.Join(basepath, "latest"))
	if err != nil {
		log.Fatalln(err)
	}
	buildAllLatest, err := os.Create("build-all-latest.sh")
	if err != nil {
		log.Fatalln(err)
	}
	pushAllLatest, err := os.Create("push-all-latest.sh")
	if err != nil {
		log.Fatalln(err)
	}
	for _, architecture := range architectures {
		toolchainlist, err := http.Get("https://toolchains.bootlin.com/downloads/releases/toolchains/" + architecture + "/tarballs/")
		if err != nil {
			log.Fatalln(err)
		}
		toolchain, err := ioutil.ReadAll(toolchainlist.Body)
		if err != nil {
			log.Fatalln(err)
		}
		toolchainlist.Body.Close()
		matches := re.FindAllSubmatch(toolchain, -1)
		var toolchains []string
		for _, match := range matches {
			toolchains = append(toolchains, string(match[1]))
		}
		last := true
		for i, toolchain := range toolchains {
			libc := strings.TrimPrefix(toolchain, architecture)
			libc = strings.TrimPrefix(libc, "--")
			libc = libc[:strings.Index(libc, "--")]
			if i+1 == len(toolchains) {
				last = true
			} else {
				nextlibc := strings.TrimPrefix(toolchains[i+1], architecture)
				nextlibc = strings.TrimPrefix(nextlibc, "--")
				nextlibc = nextlibc[:strings.Index(nextlibc, "--")]
				if nextlibc == libc {
					last = false
				} else {
					last = true
				}
			}
			p := path.Join(basepath, architecture, libc)
			err = os.MkdirAll(p, 0777)
			if err != nil {
				log.Fatalln(err)
			}
			f, err := os.OpenFile(path.Join(p, "urls"), os.O_CREATE|os.O_APPEND|os.O_RDWR, 0777)
			if err != nil {
				log.Fatalln(err)
			}
			_, err = f.WriteString("https://toolchains.bootlin.com/downloads/releases/toolchains/" + architecture + "/tarballs/" + toolchain + "\n")
			if err != nil {
				log.Fatalln(err)
			}
			f.Close()
			if last {
				url := "https://toolchains.bootlin.com/downloads/releases/toolchains/" + architecture + "/tarballs/" + toolchain
				_, err = latest.WriteString(url + "\n")
				if err != nil {
					log.Fatalln(err)
				}
				lastdd := strings.LastIndex(toolchain, "--")
				name := toolchain[:lastdd]
				name = strings.ReplaceAll(name, "--", "-")
				tag := toolchain[lastdd+2:]
				tag = strings.TrimSuffix(tag, ".tar.bz2")
				_, err = buildAllLatest.WriteString("docker build --build-arg ARCH=" + architecture + " --build-arg TOOL_URL=" + url + " -t cccollection/" + name + ":" + tag + " -t cccollection/" + name + ":latest" + " .\n")
				if err != nil {
					log.Fatalln(err)
				}
				_, err = pushAllLatest.WriteString("docker push cccollection/" + name + ":" + tag + "\n")
				if err != nil {
					log.Fatalln(err)
				}
				_, err = pushAllLatest.WriteString("docker push cccollection/" + name + ":latest\n")
				if err != nil {
					log.Fatalln(err)
				}
			}
		}
	}
	latest.Close()
}
