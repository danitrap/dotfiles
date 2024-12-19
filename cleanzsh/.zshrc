#   ___   _     _____  ___   _____ _____ _____ 
#  / _ \ | |   |_   _|/ _ \ /  ___|  ___/  ___|
# / /_\ \| |     | | / /_\ \\ `--.| |__ \ `--. 
# |  _  || |     | | |  _  | `--. \  __| `--. \
# | | | || |_____| |_| | | |/\__/ / |___/\__/ /
# \_| |_/\_____/\___/\_| |_/\____/\____/\____/ 

alias ls="eza"  # ls
alias l="eza -lbF --git"  # list, size, type, git
alias ll="eza -lbGF --git"  # long list
alias llm="eza -lbGd --git --sort=modified"  # long list, modified date sort
alias la="eza -lbhHigUmuSa --time-style=long-iso --git --color-scale"  # all list
alias lx="eza -lbhHigUmuSa@ --time-style=long-iso --git --color-scale"  # all + extended list
# specialty views
alias lS="eza -1"  # one column, just names
alias lt="eza --tree --level=3"  # tree
alias updatekitty='curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin'

alias gs='git status'
alias ga='git add'
alias gp='git push'
alias gpo='git push origin'
alias gtd='git tag --delete'
alias gtdr='git tag --delete origin'
alias gr='git branch -r'
alias gplo='git pull origin'
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias gco='git checkout '
alias gl='git log'
alias gr='git remote'
alias grs='git remote show'
alias glo='git log --pretty="oneline"'
alias glol='git log --graph --oneline --decorate'

 # ______ _   _ _   _ _____ _____ _____ _____ _   _  _____ 
# |  ___| | | | \ | /  __ \_   _|_   _|  _  | \ | |/  ___|
# | |_  | | | |  \| | /  \/ | |   | | | | | |  \| |\ `--. 
# |  _| | | | | . ` | |     | |   | | | | | | . ` | `--. \
# | |   | |_| | |\  | \__/\ | |  _| |_\ \_/ / |\  |/\__/ /
# \_|    \___/\_| \_/\____/ \_/  \___/ \___/\_| \_/\____/ 

cheatsh() {
  curl cheat.sh/$1
}

 # ___________ _____ _____ _____ _   _  _____ 
# |  _  | ___ \_   _|_   _|  _  | \ | |/  ___|
# | | | | |_/ / | |   | | | | | |  \| |\ `--. 
# | | | |  __/  | |   | | | | | | . ` | `--. \
# \ \_/ / |     | |  _| |_\ \_/ / |\  |/\__/ /
#  \___/\_|     \_/  \___/ \___/\_| \_/\____/ 

setopt HIST_SAVE_NO_DUPS         # Do not write a duplicate event to the history file.
unsetopt HIST_SAVE_NO_DUPS       # Write a duplicate event to the history file

_comp_options+=(globdots) # With hidden files
  # ____ ___  __  __ ____  _     _____ _____ ___ ___  _   _ 
#  / ___/ _ \|  \/  |  _ \| |   | ____|_   _|_ _/ _ \| \ | |
# | |  | | | | |\/| | |_) | |   |  _|   | |  | | | | |  \| |
# | |__| |_| | |  | |  __/| |___| |___  | |  | | |_| | |\  |
#  \____\___/|_|  |_|_|   |_____|_____| |_| |___\___/|_| \_|
 #

# +---------+
# | General |
# +---------+

# source ./gambit.zsh

# Load more completions
fpath=($DOTFILES/zsh/plugins/zsh-completions/src $fpath)

# Should be called before compinit
zmodload zsh/complist

# Use hjlk in menu selection (during completion)
# Doesn't work well with interactive mode
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M menuselect 'l' vi-forward-char

bindkey -M menuselect '^xg' clear-screen
bindkey -M menuselect '^xi' vi-insert                      # Insert
bindkey -M menuselect '^xh' accept-and-hold                # Hold
bindkey -M menuselect '^xn' accept-and-infer-next-history  # Next
bindkey -M menuselect '^xu' undo                           # Undo

autoload -U compinit; compinit
_comp_options+=(globdots) # With hidden files

# Only work with the Zsh function vman
# See $DOTFILES/zsh/scripts.zsh
compdef vman="man"

# +---------+
# | Options |
# +---------+

# setopt GLOB_COMPLETE      # Show autocompletion menu with globs
setopt MENU_COMPLETE        # Automatically highlight first element of completion menu
setopt AUTO_LIST            # Automatically list choices on ambiguous completion.
setopt COMPLETE_IN_WORD     # Complete from both ends of a word.

# +---------+
# | zstyles |
# +---------+

# Ztyle pattern
# :completion:<function>:<completer>:<command>:<argument>:<tag>

# Define completers
zstyle ':completion:*' completer _extensions _complete _approximate

# Use cache for commands using cache
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path "$XDG_CACHE_HOME/zsh/.zcompcache"
# Complete the alias when _expand_alias is used as a function
zstyle ':completion:*' complete true

zle -C alias-expension complete-word _generic
bindkey '^Xa' alias-expension
zstyle ':completion:alias-expension:*' completer _expand_alias

# Use cache for commands which use it

# Allow you to select in a menu
zstyle ':completion:*' menu select

# Autocomplete options for cd instead of directory stack
zstyle ':completion:*' complete-options true

zstyle ':completion:*' file-sort modification


zstyle ':completion:*:*:*:*:corrections' format '%F{yellow}!- %d (errors: %e) -!%f'
zstyle ':completion:*:*:*:*:descriptions' format '%F{blue}-- %D %d --%f'
zstyle ':completion:*:*:*:*:messages' format ' %F{purple} -- %d --%f'
zstyle ':completion:*:*:*:*:warnings' format ' %F{red}-- no matches found --%f'
# zstyle ':completion:*:default' list-prompt '%S%M matches%s'
# Colors for files and directory
zstyle ':completion:*:*:*:*:default' list-colors ${(s.:.)LS_COLORS}

# Only display some tags for the command cd
zstyle ':completion:*:*:cd:*' tag-order local-directories directory-stack path-directories
# zstyle ':completion:*:complete:git:argument-1:' tag-order !aliases

# Required for completion to be in good groups (named after the tags)
zstyle ':completion:*' group-name ''

zstyle ':completion:*:*:-command-:*:*' group-order aliases builtins functions commands

# See ZSHCOMPWID "completion matching control"
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

zstyle ':completion:*' keep-prefix true

zstyle -e ':completion:*:(ssh|scp|sftp|rsh|rsync):hosts' hosts 'reply=(${=${${(f)"$(cat {/etc/ssh_,~/.ssh/known_}hosts(|2)(N) /dev/null)"}%%[# ]*}//,/ })'

# +-------------+
# | 3rd parties |
# +-------------+

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# ______ _     _   _ _____ _____ _   _  _____ 
# | ___ \ |   | | | |  __ \_   _| \ | |/  ___|
# | |_/ / |   | | | | |  \/ | | |  \| |\ `--. 
# |  __/| |   | | | | | __  | | | . ` | `--. \
# | |   | |___| |_| | |_\ \_| |_| |\  |/\__/ /
# \_|   \_____/\___/ \____/\___/\_| \_/\____/ 

source $HOME/antigen.zsh

antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen theme robbyrussell
antigen apply

 # _____ _____ ___  ______ _____ _   _______ 
# /  ___|_   _/ _ \ | ___ \_   _| | | | ___ \
# \ `--.  | |/ /_\ \| |_/ / | | | | | | |_/ /
#  `--. \ | ||  _  ||    /  | | | | | |  __/ 
# /\__/ / | || | | || |\ \  | | | |_| | |    
# \____/  \_/\_| |_/\_| \_| \_/  \___/\_|    

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
source <(fzf --zsh)
eval "$(zoxide init --cmd cd zsh)"
eval "$(starship init zsh)"
