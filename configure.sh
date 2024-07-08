#!/bin/bash
CONFIG_PATH="$HOME/.config/"

echo "Updating dotfiles"

install helix/config.toml "$CONFIG_PATH/helix/config.toml" 
install i3/config "$CONFIG_PATH/i3/config"
install fish/config.fish "$CONFIG_PATH/fish/config.fish"
