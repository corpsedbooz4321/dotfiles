# Powerlevel10k theme
source ~/.zsh/powerlevel10k/powerlevel10k.zsh-theme

autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats '(%b)'

