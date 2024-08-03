set -gx PATH $PATH ~/.cargo/bin
set -gx PATH $PATH ~/go/bin/
set -gx EDITOR nvim
set -gx TERM xterm-256color 

set fish_greeting
set -U fish_prompt_pwd_dir_length 0 
# Set vi mode
fish_vi_key_bindings

alias v nvim
alias ls=exa
