#!/bin/bash

rm -rf .repo/local_manifests

# Rom source repo
repo init -u https://github.com/2by2-Project/android.git -b 15 --git-lfs
#echo "=================="
echo "Repo init success"
#echo "=================="

# Clone local_manifests repository
git clone -b los22 https://github.com/mitmac29/local_manifests .repo/local_manifests
#echo "============================"
echo "Local manifest clone success"
#echo "============================"

# Sync the repositories
/opt/crave/resync.sh
#echo "============================"

# Set up build environment
. build/envsetup.sh
echo "====== Envsetup Done ======="

# export
TARGET_BUILD_VARIANT=true 

# Lunch
breakfast lavender
echo "============="

# Install clean
# make installclean 

# Build rom
#m bacon
