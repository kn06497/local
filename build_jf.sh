#
# The purpose of this script is to work around JACK and NINJA, which have been
# broken in AOSP as of android-7.0.
#
# Usage: ./build.sh <DEVICE>
#

DEVICE="$1"

# Tell the environment not to use NINJA
	export USE_NINJA=false

# Delete the JACK server located in /home/<USER>/.jack*
	rm -rf ~/.jack*

# Resize the JACK Heap size
	export ANDROID_JACK_VM_ARGS="-Xmx4g -Dfile.encoding=UTF-8 -XX:+TieredCompilation"

# Restart the JACK server
	./prebuilts/sdk/tools/jack-admin kill-server
	./prebuilts/sdk/tools/jack-admin start-server

# Optionally, you may want to clear CCACHE if you still have issues
#	ccache -C


# ccache
export USE_CCACHE=1
mkdir -p /home/jenkins/ccache/cm_$device
export CCACHE_DIR=/home/jenkins/ccache/cm_$device
prebuilts/misc/linux-x86/ccache/ccache -M 20G

# Compile the build
	export CM_BUILDTYPE=NIGHTLY
	. build/envsetup.sh
	brunch $device

# Upload 
home="/home/jenkins"
rom="Android/cm-14.1/out/target/product/*for*/*2016*.zip"
curl -T $rom ftp://uploads.androidfilehost.com --user kn06497:YKAcLO5U0vyD
