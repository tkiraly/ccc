#!/bin/bash

#set -e



docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/aarch64-glibc:latest
mv $1/bin/main $1/bin/aarch64-glibc
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/aarch64-musl:latest
mv $1/bin/main $1/bin/aarch64-musl
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/aarch64-uclibc:latest
mv $1/bin/main $1/bin/aarch64-uclibc
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/aarch64be-glibc:latest
mv $1/bin/main $1/bin/aarch64be-glibc
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/aarch64be-uclibc:latest
mv $1/bin/main $1/bin/aarch64be-uclibc
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/arcle-750d-uclibc:latest
mv $1/bin/main $1/bin/arcle-750d-uclibc
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/arcle-hs38-glibc:latest
mv $1/bin/main $1/bin/arcle-hs38-glibc
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/arcle-hs38-uclibc:latest
mv $1/bin/main $1/bin/arcle-hs38-uclibc
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/armebv7-eabihf-glibc:latest
mv $1/bin/main $1/bin/armebv7-eabihf-glibc
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/armebv7-eabihf-musl:latest
mv $1/bin/main $1/bin/armebv7-eabihf-musl
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/armebv7-eabihf-uclibc:latest
mv $1/bin/main $1/bin/armebv7-eabihf-uclibc
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/armv5-eabi-glibc:latest
mv $1/bin/main $1/bin/armv5-eabi-glibc
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/armv5-eabi-musl:latest
mv $1/bin/main $1/bin/armv5-eabi-musl
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/armv5-eabi-uclibc:latest
mv $1/bin/main $1/bin/armv5-eabi-uclibc
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/armv6-eabihf-glibc:latest
mv $1/bin/main $1/bin/armv6-eabihf-glibc
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/armv6-eabihf-musl:latest
mv $1/bin/main $1/bin/armv6-eabihf-musl
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/armv6-eabihf-uclibc:latest
mv $1/bin/main $1/bin/armv6-eabihf-uclibc
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/armv7-eabihf-glibc:latest
mv $1/bin/main $1/bin/armv7-eabihf-glibc
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/armv7-eabihf-musl:latest
mv $1/bin/main $1/bin/armv7-eabihf-musl
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/armv7-eabihf-uclibc:latest
mv $1/bin/main $1/bin/armv7-eabihf-uclibc
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/armv7m-uclibc:latest
mv $1/bin/main $1/bin/armv7m-uclibc
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/bfin-uclibc:latest
mv $1/bin/main $1/bin/bfin-uclibc
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/m68k-68xxx-uclibc:latest
mv $1/bin/main $1/bin/m68k-68xxx-uclibc
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/m68k-coldfire-uclibc:latest
mv $1/bin/main $1/bin/m68k-coldfire-uclibc
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/microblazebe-glibc:latest
mv $1/bin/main $1/bin/microblazebe-glibc
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/microblazebe-musl:latest
mv $1/bin/main $1/bin/microblazebe-musl
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/microblazebe-uclibc:latest
mv $1/bin/main $1/bin/microblazebe-uclibc
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/microblazeel-glibc:latest
mv $1/bin/main $1/bin/microblazeel-glibc
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/microblazeel-musl:latest
mv $1/bin/main $1/bin/microblazeel-musl
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/microblazeel-uclibc:latest
mv $1/bin/main $1/bin/microblazeel-uclibc
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/mips32-glibc:latest
mv $1/bin/main $1/bin/mips32-glibc
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/mips32-musl:latest
mv $1/bin/main $1/bin/mips32-musl
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/mips32-uclibc:latest
mv $1/bin/main $1/bin/mips32-uclibc
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/mips32el-glibc:latest
mv $1/bin/main $1/bin/mips32el-glibc
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/mips32el-musl:latest
mv $1/bin/main $1/bin/mips32el-musl
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/mips32el-uclibc:latest
mv $1/bin/main $1/bin/mips32el-uclibc
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/mips32r5el-glibc:latest
mv $1/bin/main $1/bin/mips32r5el-glibc
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/mips32r5el-musl:latest
mv $1/bin/main $1/bin/mips32r5el-musl
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/mips32r5el-uclibc:latest
mv $1/bin/main $1/bin/mips32r5el-uclibc
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/mips32r6el-glibc:latest
mv $1/bin/main $1/bin/mips32r6el-glibc
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/mips32r6el-musl:latest
mv $1/bin/main $1/bin/mips32r6el-musl
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/mips32r6el-uclibc:latest
mv $1/bin/main $1/bin/mips32r6el-uclibc
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/mips64-n32-glibc:latest
mv $1/bin/main $1/bin/mips64-n32-glibc
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/mips64-n32-musl:latest
mv $1/bin/main $1/bin/mips64-n32-musl
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/mips64-n32-uclibc:latest
mv $1/bin/main $1/bin/mips64-n32-uclibc
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/mips64-glibc:latest
mv $1/bin/main $1/bin/mips64-glibc
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/mips64-musl:latest
mv $1/bin/main $1/bin/mips64-musl
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/mips64-uclibc:latest
mv $1/bin/main $1/bin/mips64-uclibc
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/mips64el-n32-glibc:latest
mv $1/bin/main $1/bin/mips64el-n32-glibc
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/mips64el-n32-musl:latest
mv $1/bin/main $1/bin/mips64el-n32-musl
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/mips64el-n32-uclibc:latest
mv $1/bin/main $1/bin/mips64el-n32-uclibc
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/mips64r6el-n32-glibc:latest
mv $1/bin/main $1/bin/mips64r6el-n32-glibc
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/mips64r6el-n32-musl:latest
mv $1/bin/main $1/bin/mips64r6el-n32-musl
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/mips64r6el-n32-uclibc:latest
mv $1/bin/main $1/bin/mips64r6el-n32-uclibc
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/nios2-glibc:latest
mv $1/bin/main $1/bin/nios2-glibc
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/openrisc-musl:latest
mv $1/bin/main $1/bin/openrisc-musl
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/openrisc-uclibc:latest
mv $1/bin/main $1/bin/openrisc-uclibc
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/powerpc-e500mc-glibc:latest
mv $1/bin/main $1/bin/powerpc-e500mc-glibc
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/powerpc-e500mc-musl:latest
mv $1/bin/main $1/bin/powerpc-e500mc-musl
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/powerpc-e500mc-uclibc:latest
mv $1/bin/main $1/bin/powerpc-e500mc-uclibc
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/powerpc64-e5500-glibc:latest
mv $1/bin/main $1/bin/powerpc64-e5500-glibc
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/powerpc64-e5500-musl:latest
mv $1/bin/main $1/bin/powerpc64-e5500-musl
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/powerpc64-power8-glibc:latest
mv $1/bin/main $1/bin/powerpc64-power8-glibc
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/powerpc64-power8-musl:latest
mv $1/bin/main $1/bin/powerpc64-power8-musl
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/powerpc64le-power8-glibc:latest
mv $1/bin/main $1/bin/powerpc64le-power8-glibc
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/powerpc64le-power8-musl:latest
mv $1/bin/main $1/bin/powerpc64le-power8-musl
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/riscv32-ilp32d-glibc:latest
mv $1/bin/main $1/bin/riscv32-ilp32d-glibc
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/riscv64-glibc:latest
mv $1/bin/main $1/bin/riscv64-glibc
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/riscv64-musl:latest
mv $1/bin/main $1/bin/riscv64-musl
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/sh-sh4-glibc:latest
mv $1/bin/main $1/bin/sh-sh4-glibc
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/sh-sh4-musl:latest
mv $1/bin/main $1/bin/sh-sh4-musl
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/sh-sh4-uclibc:latest
mv $1/bin/main $1/bin/sh-sh4-uclibc
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/sh-sh4aeb-glibc:latest
mv $1/bin/main $1/bin/sh-sh4aeb-glibc
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/sh-sh4aeb-musl:latest
mv $1/bin/main $1/bin/sh-sh4aeb-musl
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/sparc64-glibc:latest
mv $1/bin/main $1/bin/sparc64-glibc
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/sparcv8-uclibc:latest
mv $1/bin/main $1/bin/sparcv8-uclibc
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/x86-64-core-i7-glibc:latest
mv $1/bin/main $1/bin/x86-64-core-i7-glibc
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/x86-64-core-i7-musl:latest
mv $1/bin/main $1/bin/x86-64-core-i7-musl
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/x86-64-core-i7-uclibc:latest
mv $1/bin/main $1/bin/x86-64-core-i7-uclibc
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/x86-core2-glibc:latest
mv $1/bin/main $1/bin/x86-core2-glibc
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/x86-core2-musl:latest
mv $1/bin/main $1/bin/x86-core2-musl
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/x86-core2-uclibc:latest
mv $1/bin/main $1/bin/x86-core2-uclibc
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/x86-i686-glibc:latest
mv $1/bin/main $1/bin/x86-i686-glibc
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/x86-i686-musl:latest
mv $1/bin/main $1/bin/x86-i686-musl
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/x86-i686-uclibc:latest
mv $1/bin/main $1/bin/x86-i686-uclibc
docker run -it --rm -v $1:/flat -w /makefiles/flat cccollection/xtensa-lx60-uclibc:latest
mv $1/bin/main $1/bin/xtensa-lx60-uclibc
