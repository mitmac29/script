#!/bin/bash

rm -rf .repo/local_manifests

# Rom source repo
repo init -u https://github.com/LineageOS-Revived/android.git -b lineage-18.1 --git-lfs

# Clone local_manifests repository
git clone -b newlos https://github.com/mitmac29/local_manifests .repo/local_manifests

# Sync the repositories
/opt/crave/resync.sh

# Set up build environment
. build/envsetup.sh
breakfast lavender
# Lunch
m bacon
