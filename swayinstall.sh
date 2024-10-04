#!/bin/bash

clear

echo "Installation de SwayFX ..."
sudo apt install -y libwayland-bin libwayland-client0 libwayland-cursor0 libwayland-dev libwayland-doc libwayland-egl-backend-dev libwayland-egl1 libwayland-server0
sudo apt install -y xwayland

echo "Installation réussie"
