# environment

Common environment scripts that I use for development.

## Container-centric workflow

My dev workflow is heavily container based. I tend to avoid installing anything on my host machine that the application I'm working on is reliant on. This includes build/debugging tools for compiled languages and interpreters for interpreted languages. 

I heavily rely on VSCode devcontainers to make this workflow seamless. Although the final application images I deploy may sometimes rely on a different base image (say, Alpine), I still find it useful to be able to do development in a reproducible containerized environment.

## Toolchain
### Prerequisites

This repo doesn't work without the following binaries installed on the host machine:

* [direnv](https://direnv.net/)
* [Docker Desktop](https://www.docker.com/products/docker-desktop/)

### Shell

Shell and shell tools that I use for my host machine and devcontainer:

* [zsh](https://www.zsh.org/)
* [Starship](https://starship.rs/)

### IDEs and host machine tools

Tools that I use on the host machine:

* [VSCode](https://code.visualstudio.com/)
* [Postico 2](https://eggerapps.at/postico2/)
* [Medis](https://apps.apple.com/us/app/medis-2-gui-for-redis/id1579200037)

## Usage

To install the common `~/.zshrc` to the shell, clone this repo and then:

```
$ install-zshrc
```

This will create a symbolic link in `~/.zshrc` to wherever the `.zshrc` script is in the repo.

Make sure to export your `DOCKERHUB_ACCESS_TOKEN` somehow. An easy way to accomplish this:

```
$ echo "export DOCKERHUB_ACCESS_TOKEN=THE_ACCESS_TOKEN_HERE" >> ~/.envrc
$ direnv allow
```

## Devcontainers

There is an example `docker-compose.yml` and `devcontainer.json` file in `devcontainer` to help you quickly spin up a devcontainer environment in a new application.