if type brew &>/dev/null
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

  autoload -Uz compinit
  compinit
fi

export HISTSIZE=1000000
export HISTFILESIZE=1000000
export LESS=-R
export PATH="/opt/homebrew/opt/make/libexec/gnubin:$PATH"

eval "$(direnv hook zsh)"
eval "$(starship init zsh)"

# Add DOCKERHUB_ACCESS_TOKEN to ~/.envrc
echo $DOCKERHUB_ACCESS_TOKEN | docker login -u dimiguel --password-stdin