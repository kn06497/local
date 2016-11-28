# ccache
export USE_CCACHE=1
mkdir -p /home/android/ccache/aicp_$device
export CCACHE_DIR=/home/android/ccache/aicp_$device
prebuilts/misc/linux-x86/ccache/ccache -M 20G

# Compile the build
	. build/envsetup.sh
	brunch $device

# Upload 
home="/home/android"
rom="Android/AICP/out/target/product/jagnm/*2016*.zip"
curl -T $rom ftp://uploads.androidfilehost.com --user kn06497:YKAcLO5U0vyD
