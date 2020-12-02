# install zinit
if [[ ! -d "$XDG_CACHE_HOME/zinit" ]]; then
  mkdir "$XDG_CACHE_HOME/zinit"
  git clone https://github.com/zdharma/zinit.git "$XDG_CACHE_HOME/zinit/bin"
fi

declare -A ZINIT
ZINIT=(BIN_DIR "$XDG_CACHE_HOME/zinit/bin" HOME_DIR "$XDG_CACHE_HOME/zinit" COMPINIT_OPTS "$XDG_DATA_HOME/zsh/compdump")

source $XDG_CACHE_HOME/zinit/bin/zinit.zsh
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-syntax-highlighting
zinit light ascii-soup/zsh-url-highlighter
zinit light b4b4r07/zsh-vimode-visual
