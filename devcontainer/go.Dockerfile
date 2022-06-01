FROM dimiguel/devcontainer

RUN go install -v golang.org/x/tools/gopls@latest

RUN go install honnef.co/go/tools/cmd/staticcheck@latest

RUN go install -v github.com/go-delve/delve/cmd/dlv@latest
