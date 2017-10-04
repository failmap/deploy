[![Build Status](https://travis-ci.org/failmap/deploy.svg?branch=master)](https://travis-ci.org/failmap/deploy)

# Failmap Deploy configuration

This repository combines failmap components and resources to create different development/deploy/release scenarios.

Requirements:

- Docker/Docker for Mac

# Quickstart

Clone this repository recursively to include submodules:

    git clone --recursive https://github.com/failmap/deploy
    cd deploy

Bring up entire stack:

    docker-compose up -d

Initialize the database, test data and user run:

    docker-compose run admin /usr/local/bin/failmap-admin migrate
    docker-compose run admin /usr/local/bin/failmap-admin loaddata testdata
    docker-compose run admin /usr/local/bin/failmap-admin createsuperuser


Admin web interface should now be available on `http://localhost:8080/admin/` and the frontend website on `http://localhost:8081`.

Logfiles are available using:

    docker-compose logs

The whole stack can be destroyed by calling:

    docker-compose down

To rebuild Docker images after changes run:

    docker-compose up --build

For more control over the stack see: https://docs.docker.com/compose/reference/
