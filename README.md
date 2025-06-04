# symfony-docker
Simplest docker for Symfony

If you don't want to install docker or Symfony on your local machine, 
but you have installed docker - you can use this repo to create and develop symfony projects

## Local dev

```shell
#build image if any changes
docker compose build --no-cache

#start
docker compose up -d

#stop 
docker compose down

#enter shell
docker exec -itu root symfony bash
```


## Useful commands
```shell
#check
symfony check:requirements

#create app
symfony new my_project_directory --version=lts

symfony new my_project_directory --version="7.3.x-dev" --webapp

symfony new my_project_directory

#this command don't require git settings
composer create-project symfony/skeleton:"7.3.x-dev" my_project_directory

#info
php bin/console about

#run
symfony server:start --allow-all-ip
```

