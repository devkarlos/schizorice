HISTFILE=~/.config/zsh/.history
HISTSIZE=1000
SAVEHIST=2000

# delete duplicates first when HISTFILE size exceeds HISTSIZE
setopt hist_expire_dups_first

# ignore duplicated commands history list
setopt hist_ignore_dups

# ignore commands that start with space
setopt hist_ignore_space

# show command with history expansion to user before running it
setopt hist_verify

# force zsh to show the complete history
alias history="history 0"
