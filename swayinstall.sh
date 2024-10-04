#!/bin/bash

clear

echo "Installation de SwayFX ..."
sudo apt install -y libwayland-bin libwayland-client0 libwayland-cursor0 libwayland-dev libwayland-doc libwayland-egl-backend-dev libwayland-egl1 libwayland-server0
sudo apt install -y xwayland

sudo apt install -y meson wayland-protocols libpcre2-dev libjson-c-dev libpango-1.0-0 libcairo2-dev

mkdir ~/build
cd ~/build # Or whatever you have named it
# Downloading Wlroots
wget https://gitlab.freedesktop.org/wlroots/wlroots/-/archive/0.16.2/wlroots-0.16.2.tar.gz
tar -xf wlroots-0.16.2.tar.gz
rm wlroots-0.16.2.tar.gz

# Downloaing Swayfx
wget https://github.com/WillPower3309/swayfx/archive/refs/tags/0.3.2.tar.gz
tar -xf 0.3.2.tar.gz
rm 0.3.2.tar.gz

cd wlroots-0.16.2
meson setup build/
ninja -C build/

cd swayfx-0.3.2
meson build/
ninja -C build/
sudo ninja -C build/ install

echo "Installation réussie"
