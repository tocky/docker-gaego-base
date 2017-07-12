This is a base project to setup development environment on your local using Docker container.

## Prerequisite

- Docker
- Docker Compose

```
$ docker -v
Docker version 17.06.0-ce, build 02c1d87
$ docker-compose -v
docker-compose version 1.14.0, build c7bdf9e
```

## How to run

```
$ git clone https://github.com/tocky/docker-gaego-base
$ cd docker-gaego-base
$ make up
```

Then you can get http://localhost:8080/ in your host computer's browser.

## How to deploy on GAE

```
$ docker-compose run gaego appcfg.py update -A {PROJECT_ID} -V {VERSION} backend --noauth_local_webserver
```

After hitting the command above, an authentication URL is shown on your terminal. Open it in your browser and get a code to login.

- `PROJECT_ID` – Your GCP project ID
- `VERSION` – A version of application
