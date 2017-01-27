# ccache
export USE_CCACHE=1
mkdir -p /home/kn06497/.ccache/cm_ghost
export CCACHE_DIR=/home/kn06497/.ccache/cm_ghost
prebuilts/misc/linux-x86/ccache/ccache -M 30G

# Compile the build
	. build/envsetup.sh
	export WITH_SU=true
	export CM_BUILDTYPE=EXPERIMENTAL
	brunch ghost

# Upload 

curl -T out/target/product/ghost/lineage-*.zip ftp://uploads.androidfilehost.com --user kn06497:YKAcLO5U0vyD
