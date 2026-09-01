
#===================================================================================
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"


#===================================================================================
# --- Environment Variables ---
#===================================================================================

export PATH="$HOME/.local/bin:$PATH"
export EDITOR="nvim"
export VISUAL="nvim"
export DOTNET_ROOT=/usr/share/dotnet
export PATH=$PATH:$DOTNET_ROOT:$HOME/.dotnet/tools

#===================================================================================
# --- Zsh Options ---
#===================================================================================

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt SHARE_HISTORY          # Share history across terminals
setopt HIST_IGNORE_ALL_DUPS   # Do not record duplicate entries

#===================================================================================
# --- Source Pywal Colors (if generated) ---
#===================================================================================

[ -f ~/.cache/wal/sequences ] && cat ~/.cache/wal/sequences
[ -f ~/.cache/wal/colors-tty.sh ] && source ~/.cache/wal/colors-tty.sh

#===================================================================================
# --- Plugins (Arch Arch Linux Pacman paths) ---
#===================================================================================

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh 2>/dev/null
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null

#===================================================================================
# Aliases# --- Navigation & General Core ---
#===================================================================================
alias cls="clear"
alias q="exit"
alias cd..="cd .."
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

# --- Modern Eza (Exa) File Listings ---
alias ls="eza --icons=auto --group-directories-first"
alias l="eza -lbF --git --icons=auto"
alias ll="eza -la --icons=auto --group-directories-first"
alias la="eza -a --icons=auto"
alias lt="eza --tree --level=2 --icons=auto"
alias lta="eza --tree --level=2 -a --icons=auto"

# Sort listings
alias lsize="eza -la --sort=size --icons=auto"
alias ldate="eza -la --sort=date --icons=auto"

# --- Editors & Configuration Management ---
alias vi="nvim"
alias y="yazi"
alias fs="fastfetch"
alias dot="cd ~/dotfiles"
alias conf="cd ~/.config"
alias reload="source ~/.zshrc"
alias hyprreload="hyprctl reload"

# --- Arch Linux / Pacman ---
alias updateall="sudo pacman -Syu"
alias del="sudo pacman -Rns"
alias ins="sudo pacman -S"
alias please="sudo"
alias cleanup="sudo pacman -Rns \$(pacman -Qdtq)"

# --- Git Workflow Shortcuts ---
alias g="git"
alias gs="git status"
alias ga="git add ."
alias gc="git commit -m"
alias gcb="git checkout -b"
alias gp="git push"
alias gl="git pull"
alias gd="git diff"
alias glog="git log --oneline --graph --decorate"

# --- Rofi / Pywal Custom Executables ---
alias wall="rofi-wallpaper"
alias sw="setwal"
alias ss="screenshot.sh"
#===================================================================================
#===================================================================================



