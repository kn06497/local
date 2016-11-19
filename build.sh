# ccache
export USE_CCACHE=1
mkdir -p /home/android/ccache/cm_$device
export CCACHE_DIR=/home/android/ccache/cm_$device
prebuilts/misc/linux-x86/ccache/ccache -M 20G

# Compile the build
	export CM_BUILDTYPE=NIGHTLY
	. build/envsetup.sh
	brunch $device

# Upload 
home="/home/android"
rom="Android/cm-14.1/out/target/product/jf*/*2016*.zip"
curl -T $rom ftp://uploads.androidfilehost.com --user kn06497:YKAcLO5U0vyD
