#!/bin/sh

apk_name="luci-app-lite-watchdog"
version="0.24.08.07"

echo "Updating packages"
if ! opkg update; then
    echo "Failed to update OPKG"
    exit 1
fi

echo "Downloading $apk_name"
if ! curl -LO "https://github.com/zsutarto/$apk_name/releases/download/$version/${apk_name}_${version}_all.ipk"; then
    echo "Failed to download $apk_name"
    exit 1
fi

echo "Installing $apk_name"
if ! opkg install "${apk_name}_${version}_all.ipk"; then
    echo "Failed to install $apk_name"
    exit 1
fi

echo "Process completed. $apk_name has been installed."
