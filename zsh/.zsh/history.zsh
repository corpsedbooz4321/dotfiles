# Better history behavior
setopt hist_expire_dups_first
setopt hist_reduce_blanks
setopt hist_verify

# Ignore trivial commands
HISTIGNORE="ls:cd:pwd:exit:clear"
