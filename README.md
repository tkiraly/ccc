# ccc

cross compiler collection based on https://toolchains.bootlin.com/

## Usage

`git clone https://github.com/tkiraly/ccc.git`  
`./build-all-latest.sh` OR pick the ones you want to use from the sh file  
go to your source directory  
`docker run -it --rm -v $(pwd):/flat -w /makefiles/flat cccollection/aarch64-glibc:latest`

your source directory must look like this:
.  
├── bin  
├── inc  
└── src  

src: .c files  
inc: .h files  
bin: where the result of the compilation is copied  

## Notes

Go code just generates files, it does not gets involved with docker or the cross compilers.