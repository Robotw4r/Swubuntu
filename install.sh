#!/bin/bash

source ./scripts-handler.sh

function start() {
clear
echo "          ------------ INSTALLATEUR SWUBUNTU ------------

Il est recommandé d'installer les composants dans l'odre proposé.

1- Installation des dépots supplémentaires

2- Installation d'utilitaires nécessaires

3- Installation de Wayland/SwayFX/Waybar/Kitty

4- Configuration de Sway

0- Quitter

"

read -n1 -p "Choix ? " choix

case "$choix" in

1)  repos
    ;;
2)  utils
    ;;
3)  swayinstall
    ;;
4)  swayconfig
    ;;
0)  export success="2"
    clear && exit 1
    ;;
*)  menu1
    ;;
esac

}

start
