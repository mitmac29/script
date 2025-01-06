#!/bin/bash

source build/envsetup.sh

lunch clover_lavender-ap4a-userdebug

mka clover -j$(nproc --all)
