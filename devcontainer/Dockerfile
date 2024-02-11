FROM node:lts

ENV GO_VERSION 1.22.0

RUN curl -LO "https://golang.org/dl/go${GO_VERSION}.linux-arm64.tar.gz" \
    && tar -C /usr/local -xzf "go${GO_VERSION}.linux-arm64.tar.gz" \
    && rm "go${GO_VERSION}.linux-arm64.tar.gz"

ENV PATH="/usr/local/go/bin:${PATH}"

RUN corepack enable
RUN corepack prepare pnpm@latest --activate

# Install Golang tools
RUN go install -v golang.org/x/tools/gopls@latest
RUN go install honnef.co/go/tools/cmd/staticcheck@latest
RUN go install -v github.com/go-delve/delve/cmd/dlv@latest

RUN apt-get update && apt-get install -y direnv zsh zplug curl git

RUN curl -sS https://starship.rs/install.sh | sh -s -- -f --platform unknown-linux-musl
RUN echo "eval \"\$(starship init zsh)\"" >> ~/.zshrc
RUN echo "eval \"\$(direnv hook zsh)\"" >> ~/.zshrc
RUN mkdir ~/.config

RUN echo "command_timeout = 1500" >> ~/.config/starship.toml

WORKDIR /workspace



RUN chsh -s /bin/zsh