#!/bin/sh

ROOT=$(dirname "$0")

sh $ROOT/_copy.sh $ROOT/configs/zed/settings.json ~/.config/zed/settings.json
sh $ROOT/_copy.sh $ROOT/configs/claude/settings.json ~/.claude/settings.json
sh $ROOT/_copy.sh $ROOT/configs/tmux/tmux.conf ~/.tmux.conf
sh $ROOT/_copy.sh $ROOT/configs/fish/config.fish ~/.config/fish/config.fish
sh $ROOT/_copy.sh $ROOT/configs/fish/functions/q.fish ~/.config/fish/functions/q.fish
