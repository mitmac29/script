##!/bin/bash

rm -rf .repo/local_manifests

# Rom source repo
repo init -u https://github.com/mitmac29/android_ -b android-15 --git-lfs

# Clone local_manifests repository
git clone -b o https://github.com/miteshx07/local_manifests .repo/local_manifests

# Sync the repositories
/opt/crave/resync.sh

# Set up build environment
#. build/envsetup.sh
#brunch lavender
