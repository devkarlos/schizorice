# Homebrew & OrbStack
eval "$(/opt/homebrew/bin/brew shellenv zsh)"
source ~/.orbstack/shell/init.zsh 2>/dev/null || :

# Zinit
source ~/.config/zsh/zinit.zsh

# Options
source ~/.config/zsh/options.zsh

# History
source ~/.config/zsh/history.zsh

# Completions
source ~/.config/zsh/completions.zsh

# TODO: Enable command-not-found if installed

# Aliases
source ~/.config/zsh/aliases.zsh

# Exports
source ~/.config/zsh/exports.zsh
