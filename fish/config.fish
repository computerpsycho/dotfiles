set -gx PATH $PATH ~/.cargo/bin
set -gx PATH $PATH ~/go/bin/
set -gx EDITOR helix
set -gx TERMINAL kitty
# Created by `pipx` on 2024-07-07 07:27:43
set PATH $PATH /home/vuax/.local/bin
set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH

set fish_greeting
set -U fish_prompt_pwd_dir_length 0 # show full path

alias v nvim
alias hx helix # arch issue (conflicting packages)
alias lg lazygit
