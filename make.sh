#!/bin/bash
export ARCH=arm64
export CROSS_COMPILE=/home/vasy/Toolchain/aarch64-4.9/bin/aarch64-linux-android-

make montana_defconfig
make 

tools/dtbTool -s 2048 -o arch/arm64/boot/dt.img -p scripts/dtc/ arch/arm64/boot/dts/qcom/ -v
