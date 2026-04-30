#!/bin/sh

ROOT=$(dirname "$0")

sh $ROOT/_copy.sh ~/.config/zed/settings.json $ROOT/configs/zed/settings.json
sh $ROOT/_copy.sh ~/.claude/settings.json $ROOT/configs/claude/settings.json
sh $ROOT/_copy.sh ~/.tmux.conf $ROOT/configs/tmux/tmux.conf
sh $ROOT/_copy.sh ~/.config/fish/config.fish $ROOT/configs/fish/config.fish
sh $ROOT/_copy.sh ~/.config/fish/functions/q.fish $ROOT/configs/fish/functions/q.fish
