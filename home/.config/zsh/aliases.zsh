if command -v dircolors >/dev/null 2>&1; then
    eval "$(dircolors -b)"
elif command -v gdircolors >/dev/null 2>&1; then
    eval "$(gdircolors -b)"
fi

alias cp="cp -iv"
alias mv="mv -iv"
alias rm="rm -iv"
alias grep="grep --color=auto"
alias ip="ip --color=auto"

alias dc="docker compose"
alias dcu="docker compose up"
alias dcd="docker compose down"
alias dce="docker compose exec"
alias dcr="docker compose restart"
alias dcl="docker compose logs"
alias dcb="docker compose build"

alias g="git"
alias gcp="git config user.name 'devkarlos' && git config user.email 'k.raffay@protonmail.com'"
alias gcd="git config user.name 'karlos' && git config user.email 'karol.raffay@digishock.cz'"

if command -v gls >/dev/null 2>&1; then
    alias ls="gls --color=auto --group-directories-first"
elif [[ "$(uname)" == "Darwin" ]]; then
    alias ls="ls -G"
else
    alias ls="ls --color=auto --group-directories-first"
fi

alias ag="open -a Antigravity"
alias zshfresh="~/dev/schizorice/scripts/copy-zsh.sh && source ~/.config/zsh/.zshrc"
alias vimfresh="~/dev/schizorice/scripts/copy-vim.sh"

alias kcc="CLAUDE_CONFIG_DIR=~/.config/.claude-karlos claude"
alias dcc="CLAUDE_CONFIG_DIR=~/.config/.claude-digishock claude"