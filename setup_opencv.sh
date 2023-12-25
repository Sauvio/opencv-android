#!/bin/bash

# Clean gradle cache
rm -rf $HOME_DIR/.gradle/caches

# Download OpenCV Android SDK

opencv_version="4.8.1"
opencv_sdk_zip="cache/opencv-android-sdk.zip"

if [[ $1 = "--skip-download" ]]; then
    echo "Skipping Download of ${opencv_sdk_zip}..."
else
    echo "Downloading ${opencv_sdk_zip}..."
    download_url="https://github.com/opencv/opencv/releases/download/${opencv_version}/opencv-${opencv_version}-android-sdk.zip"
    echo "Download URL: ${download_url}"
    wget -q ${download_url} -O ${opencv_sdk_zip}
fi

# Verify that file is present or downloaded
if [[ ! -f ${opencv_sdk_zip} ]]; then
    echo "${opencv_sdk_zip} not found... Either download failed or skipped..."
    exit 1
fi

echo "Unzipping OpenCV SDK..."
unzip -qqo ${opencv_sdk_zip} -d opencv_sdk
echo "Removed build.gradle from the unzipped destination folder."
rm opencv_sdk/OpenCV-android-sdk/sdk/build.gradle
echo "Moving files in correct place..."
cp -r opencv_sdk/OpenCV-android-sdk/sdk/* sdk/
echo "Cleaning Up..."
rm -rf opencv_sdk
rm "${opencv_sdk_zip}"
