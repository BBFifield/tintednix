#!/usr/bin/env bash

export BUILD_DIR=$PWD/build
export SRC_DIR=$PWD/pkgs/themes/gtk/base16-gtk

mkdir -p "$BUILD_DIR"

echo "\$colors-url: \"file://$HOME/.config/gtk-3.0/colors.css\";" > "$SRC_DIR/gtk-3.0/_local-paths.scss"

echo "Generated $SRC_DIR/gtk3/_local-paths.scss"
alias mk-gtk3='sass $SRC_DIR/gtk-3.0/gtk.scss $BUILD_DIR/gtk-3.0/gtk.css'
alias mk-gtk4='sass $SRC_DIR/gtk-4.0/gtk.scss $BUILD_DIR/gtk-4.0/gtk.css'
alias mk-all='mk-gtk3; mk-gtk4'
echo 'Compile gtk3 theme: mk-gtk3'
echo 'Compile gtk4 theme: mk-gtk4'
echo 'Compile both gtk3 and gtk4: mk-all'
