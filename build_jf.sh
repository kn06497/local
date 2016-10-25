#!/bin/bash

# ccache
export USE_CCACHE=1
mkdir -d /home/android/ccache/aicp_$device
export CCACHE_DIR=/home/android/ccache/aicp_$device
prebuilts/misc/linux-x86/ccache/ccache -M 50G


# kbuild flags
export KBUILD_BUILD_USER=Kn06497
export KBUILD_BUILD_HOST=xda-developers

# Build environment
. build/envsetup.sh
brunch $device
