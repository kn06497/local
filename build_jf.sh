#!/bin/bash

# ccache
export USE_CCACHE=1
mkdir -d /home/android/ccache/cm_$device
export CCACHE_DIR=/home/android/ccache/cm_$device
prebuilts/misc/linux-x86/ccache/ccache -M 20G


# kbuild flags
export KBUILD_BUILD_USER=Kn06497
export KBUILD_BUILD_HOST=kn06497

# Build environment
. build/envsetup.sh
brunch $device
