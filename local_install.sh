#!/bin/bash

#mkdir -p ~/.local/share/gnome-shell/extensions/ding@rastersoft.com
#cp -a *.js ~/.local/share/gnome-shell/extensions/ding@rastersoft.com/
rm -rf .build
mkdir .build
meson --prefix=$HOME/.local/ --localedir=share/gnome-shell/extensions/ding@rastersoft.com/locale .build
ninja -C .build install
