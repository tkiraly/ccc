FROM ubuntu:20.04

RUN apt-get update -y && \
apt-get upgrade -y && \
apt-get install -y build-essential wget

COPY flat/Makefile /makefiles/flat/Makefile
ARG TOOL_URL
ARG ARCH
WORKDIR /toolchain
RUN wget -O tool.tar.bz2 ${TOOL_URL} && \
tar -xaf tool.tar.bz2 --strip-components=1 && \
rm /toolchain/tool.tar.bz2

ENV CC=/toolchain/bin/${ARCH}-linux-gcc

ENTRYPOINT [ "/usr/bin/make" ]
