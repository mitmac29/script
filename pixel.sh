#!/bin/bash

rm -rf .repo/local_manifests

# Rom source repo
repo init -u https://github.com/Project-PixelStar/manifest -b 14-qpr3 --git-lfs

# Clone local_manifests repository
git clone -b pixel https://github.com/mitmac29/local_manifests .repo/local_manifests

# Sync the repositories
/opt/crave/resync.sh

# Set up build environment
. build/envsetup.sh
lunch pixelstar_lavender-userdebug
# Lunch
#mka bacon
