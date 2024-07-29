#!/bin/bash
CONFIG_PATH="${CONFIG_PATH:-$HOME/.config}"

echo "Updating dotfiles"

install sway/config "$CONFIG_PATH/sway/config"
install wofi/style.css "$CONFIG_PATH/wofi/style.css"
install foot/foot.ini "$CONFIG_PATH/foot/foot.ini"
install fish/config.fish "$CONFIG_PATH/fish/config.fish"
mkdir -p "$CONFIG_PATH/nvim"
cp -r nvim/* "$CONFIG_PATH/nvim"
mkdir -p "$CONFIG_PATH/i3blocks"
cp -r i3blocks/* "$CONFIG_PATH/i3blocks"
