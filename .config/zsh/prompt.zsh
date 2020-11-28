if ! builtin command -v powerline-shell >& /dev/null; then
  exit
fi

function powerline_precmd() {
  PS1="$(powerline-shell --shell zsh $?)"
}

function install_powerline_precmd() {
  for s in "${precmd_functions[@]}"; do
    if [ "$s" = "powerline_precmd" ]; then
      return
    fi
  done
  precmd_functions+=(powerline_precmd)
}

if [ "$TERM" != "linux" ]; then
  install_powerline_precmd
fi

export VIMODE='INSERT'
function zle-keymap-select zle-line-init {
  local exit_code=$?
  export VIMODE="${${KEYMAP/vicmd/NORMAL}/(main|viins)/INSERT}"
  PS1="$(powerline-shell --shell zsh $exit_code)"
  zle reset-prompt
}

zle -N zle-keymap-select
zle -N zle-line-init
