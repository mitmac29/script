#!/bin/bash

. build/envsetup.sh

export CROSS_COMPILE=/tmp/src/android/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/bin/aarch64-linux-android-

brunch lavender
