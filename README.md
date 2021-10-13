# README

# Versions
```
ruby '2.7.1'
rails '6.0.3'
```

# Requirement
```
Docker
docker-compose
```

# Usage
## Build
``` bash
$ docker-compose build
$ docker-compose exec app rails db:create
$ docker-compose exec app rails db:migrate
```

## Run
```bash
$ docker-compose up
```
