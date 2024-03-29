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
export PATH="$HOME/.rbenv/bin:$PATH"
export FLYCTL_INSTALL="/Users/dimgl/.fly"

eval "$(direnv hook zsh)"
eval "$(starship init zsh)"
eval "$(rbenv init - zsh)"

export DENO_INSTALL="/Users/dimgl/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

# pnpm
export PNPM_HOME="/Users/dimgl/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

# Add DOCKERHUB_ACCESS_TOKEN to ~/.envrc
cat ~/.DOCKERHUB_ACCESS_TOKEN | docker login -u dimiguel --password-stdin
