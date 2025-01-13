# docker-good-boy

Hey guys, I domesticated Docker! A silly little script that wraps docker compose commands, mostly useful because of `docker-rollover`. 


![good-boy](./good-boys/good-boy.jpeg)
## Tricks

- `docker-sit` : `docker compose pause`
- `docker-up` : `docker compose up -d`
- `docker-down` : `docker compose down`
- `docker-rollover` : `docker-compose down && - docker-compose build --no-cache && docker-compose up -d`
- `docker-good-boy` && `docker-gb` : `docker ps && echo \"woof\"`


## How To Train Your Dog

1. Git clone this project and navigate to the project folder.

2. Run `chmod +x docker_good_boy.sh`.

3. If you get the `~/.zshrc not found!` error, make one using `touch ~/.zshrc`.

4. Else, run `./docker_good_boy.sh` to add the aliases to your `~/.zshrc`.

## 
[![Bash](https://img.shields.io/badge/Bash-4EAA25?logo=gnubash&logoColor=fff)](#)
[![Zsh](https://img.shields.io/badge/Zsh-F15A24?logo=zsh&logoColor=fff)](#)
[![Docker](https://img.shields.io/badge/Docker-2496ED?logo=docker&logoColor=fff)](#) 	
[![macOS](https://img.shields.io/badge/macOS-000000?logo=apple&logoColor=F0F0F0)](#)