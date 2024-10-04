#!/bin/bash

clear

echo "Ajout des dépots étendus ..."
sudo add-apt-repository universe
sudo add-apt-repository restricted
sudo add-apt-repository multiverse
sudo apt update

echo "Installation réussie"
