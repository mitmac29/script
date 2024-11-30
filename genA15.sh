#!/bin/bash

rm -rf .repo/local_manifests

# Rom source repo
repo init --depth=1 -u https://github.com/mitmac29/manifest.git -b verve --git-lfs
echo "=================="
echo "Repo init success"
echo "=================="

# Clone local_manifests repository
git clone -b gen https://github.com/miteshx07/local_manifest .repo/local_manifests
echo "============================"
echo "Local manifest clone success"
echo "============================"

# Sync the repositories
/opt/crave/resync.sh
echo "============================"

# Set up build environment
source build/envsetup.sh
echo "====== Envsetup Done ======="

# Export
export TZ=Asia/Mumbai
make installclean

# Lunch
breakfast lavender
echo "============="

# Build rom
# mka genesis
