# >>> zsh config
# use color
autoload -Uz colors
colors

# autocomplete
autoload -Uz compinit
compinit

# auto suggestion
zstyle ":completion:*" matcher-list "m:{[:lower:][:upper:]}={[:upper:][:lower:]}"

# alias
alias l="ls -FG --color=auto"
alias la="ls -alFG --color=auto"
alias ll="ls -lFG --color=auto"

# make and cd to directory
function mkcd() {
  if [[ -d $1 ]]; then
    echo "$1 already exists!"
    cd $1
  else
    mkdir -p $1 && cd $1
  fi
}
# <<< zsh config

# >>> PATH
export PATH="$PATH:$HOME/src/flutter/bin"
# <<< PATH

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('$HOME/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "$HOME/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "$HOME/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="$HOME/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# >>> oh-my-posh
eval "$(oh-my-posh init zsh --config $HOME/.zsh/omp.json)"
# <<< oh-my-posh
