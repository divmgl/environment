FROM golang:1.18.3

RUN apt-get update && apt-get install -y direnv zsh zplug curl git

RUN chsh -s /bin/zsh

RUN curl -sS https://starship.rs/install.sh | sh -s -- -f --platform unknown-linux-musl

RUN echo "eval \"\$(starship init zsh)\"" >> ~/.zshrc

RUN echo "eval \"\$(direnv hook zsh)\"" >> ~/.zshrc

RUN mkdir ~/.config

RUN echo "command_timeout = 1500" >> ~/.config/starship.toml

WORKDIR /workspace

# Install Postgres binaries
RUN apt-get install -y curl ca-certificates gnupg
RUN curl https://www.postgresql.org/media/keys/ACCC4CF8.asc | gpg --dearmor | tee /etc/apt/trusted.gpg.d/apt.postgresql.org.gpg >/dev/null
RUN sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt bullseye-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
RUN apt-get update
RUN apt-get install -y postgresql-14