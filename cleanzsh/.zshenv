export EDITOR="nvim"
export VISUAL="nvim"

export HISTFILE="$HOME/.zsh_history"    # History file
export HISTSIZE=10000                   # Maximum events for internal history
export SAVEHIST=10000                   # Maximum events in history file

export NVM_DIR="$HOME/.nvm"
export MY_LOCATION='Palermo, Italy'

export PATH="$HOME/.local/scripts:$HOME/go/bin:$PATH"

# pnpm
export PNPM_HOME="/home/daniele/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
