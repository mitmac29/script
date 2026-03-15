#!/bin/bash

rm -rf .repo/local_manifests

# Rom source repo
repo init -u https://github.com/VoltageOS/manifest.git -b 16.2 --git-lfs
#echo "=================="
echo "Repo init success"
#echo "=================="

# Clone local_manifests repository
git clone -b vos https://github.com/mitmac29/android_device_xiaomi_lavender16 device/xiaomi/lavender
#echo "============================"
#echo "Local manifest clone success"
#echo "============================"

# Sync the repositories
/opt/crave/resync.sh
echo "============================"

# Set up build environment
. build/envsetup.sh
echo "====== Envsetup Done ======="

# Lunch
brunch lavender user
echo "======  Build Done ======="
