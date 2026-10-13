# fzf - fuzzy finder
#   Ctrl+R historie | Ctrl+T vlozit soubor | Alt+C skocit do slozky
if command -v fzf >/dev/null 2>&1; then
    # jen na skutecnem terminalu, jinak `zsh -ic` (skripty, agenti) hlasi chyby
    [[ -t 0 ]] && source <(fzf --zsh)
    export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'
    # fd respektuje .gitignore, takze node_modules se neprohledava
    if command -v fd >/dev/null 2>&1; then
        export FZF_DEFAULT_COMMAND='fd --type f --hidden --exclude .git'
        export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
        export FZF_ALT_C_COMMAND='fd --type d --hidden --exclude .git'
    fi
fi

# zoxide - cd s pameti frekvence; `cd projekt` skoci odkudkoliv
command -v zoxide >/dev/null 2>&1 && eval "$(zoxide init zsh --cmd cd)"
