# ccache
export USE_CCACHE=1
mkdir -p /var/lib/jenkins/ccache/cm_$device
export CCACHE_DIR=/var/lib/jenkins/ccache/cm_$device
prebuilts/misc/linux-x86/ccache/ccache -M 20G

# Compile the build
	. build/envsetup.sh
	brunch $device

# Upload 

rom="out/target/product/*fortuna/*2016*.zip"
curl -T $rom ftp://uploads.androidfilehost.com --user kn06497:YKAcLO5U0vyD
