#!/bin/sh

ROOT=$(dirname "$0")

sh $ROOT/_copy.sh ~/.config/zed/settings.json $ROOT/configs/zed/settings.json
sh $ROOT/_copy.sh ~/.claude/settings.json $ROOT/configs/claude/settings.json
sh $ROOT/_copy.sh ~/.tmux.conf $ROOT/configs/tmux/tmux.conf
sh $ROOT/_copy.sh ~/.config/fish/conf.d/joel.fish $ROOT/configs/fish/config.fish
sh $ROOT/_copy.sh ~/.config/fish/functions/fish_prompt.fish $ROOT/configs/fish/fish_prompt.fish
sh $ROOT/_copy.sh "$HOME/Library/Application Support/com.mitchellh.ghostty/config" $ROOT/configs/ghostty/config
