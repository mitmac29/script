#!/bin/bash

#rm -rf .repo/local_manifests

# Rom source repo
#repo init -u https://github.com/LineageOS-Revived/android.git -b lineage-18.1 --git-lfs
#echo "=================="
#echo "Repo init success"
#echo "=================="

# Clone local_manifests repository
#git clone -b los18 https://github.com/mitmac29/local_manifests .repo/local_manifests
#echo "============================"
#echo "Local manifest clone success"
#echo "============================"

# Sync the repositories
#/opt/crave/resync.sh
#echo "============================"

# Set up build environment
. build/envsetup.sh
echo "====== Envsetup Done ======="

export DEVICE_MAINTAINER=MiTeSH
export LINEAGE_MAINTAINER=MiTeSH
export TZ=Asia/Dhaka
export WITH_GMS_MINIMAL=true
echo "======== Export Done ======="

# Lunch
breakfast lavender
echo "============="

# Install clean
# make installclean 

# Build rom
# m bacon
