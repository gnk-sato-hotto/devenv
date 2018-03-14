# devenv
My development environment with docker


# OS
AmazonLinux (docker image: vettl/amazon-linux:latest)

## Includes

・vim
・nginx
・mysql
・nvm and node
・pyenv and python3.4
・rbenv and ruby2.5
・bashrc
・tree
・git

## To setup

```
## create image 
docker build .

## exec bash 
docker run -it ${img_id} /bin/bash 
```
