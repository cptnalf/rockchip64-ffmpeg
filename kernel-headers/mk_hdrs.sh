#!/bin/bash
VER=$1
shift

KERNEL_DIR=/usr/src/linux-headers-${VER}-rockchip64
CURRENT_DIR=`pwd`

pushd $KERNEL_DIR
sudo make INSTALL_HDR_PATH=${CURRENT_DIR}/${VER} headers_install
popd
