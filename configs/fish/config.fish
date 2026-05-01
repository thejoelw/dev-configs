fish_vi_key_bindings

fish_add_path $HOME/.local/bin/
fish_add_path $HOME/.cargo/bin/
fish_add_path /opt/homebrew/bin/
fish_add_path /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/
fish_add_path /Applications/Sublime\ Merge.app/Contents/SharedSupport/bin/

set LANG C
set LC_CTYPE en_US.UTF-8
set LC_ALL en_US.UTF-8

set --export EDITOR zed --wait

abbr --add q exit
