set -U fish_greeting
set -U nvm_default_version 22
set -Ux EDITOR nvim
set -Ux VISUAL nvim
set -Ux MY_LOCATION 'Palermo, Italy'
set -Ux NVM_DIR $HOME/.nvm

fish_add_path $HOME/Code/sesh $HOME/.local/scripts

if status is-interactive
    # Commands to run in interactive sessions can go here
    alias ls eza # ls
    alias l 'eza -lbF --git' # list, size, type, git
    alias ll 'eza -lbGF --git' # long list
    alias llm 'eza -lbGd --git --sort=modified' # long list, modified date sort
    alias la 'eza -lbhHigUmuSa --time-style=long-iso --git --color-scale' # all list
    alias lx 'eza -lbhHigUmuSa@ --time-style=long-iso --git --color-scale' # all + extended list
    # specialty views
    alias lS 'eza -1' # one column, just names
    alias lt 'eza --tree --level=3' # tree

    # update kitty
    alias updatekitty 'curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin'

    eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)
    starship init fish | source
    zoxide init --cmd cd fish | source
end
