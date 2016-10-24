#!/bin/bash

# ccache
export USE_CCACHE=1
mkdir -d /home/android/ccache/xosp_jflteatt
export CCACHE_DIR=/home/android/ccache/xosp_jflteatt
prebuilts/misc/linux-x86/ccache/ccache -M 50G


# kbuild flags
export KBUILD_BUILD_USER=Kn06497
export KBUILD_BUILD_HOST=xda-developers

# Build environment
. build/envsetup.sh
brunch jflteatt
