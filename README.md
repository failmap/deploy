# Failmap Deploy configuration

This repository combines failmap components and resources to create different deploy/release scenarios.

Requirements:

- Docker/Docker for Mac

# Quickstart

Clone this repository recursively to include submodules:

    git clone --recursive https://github.com/failmap/deploy

Bring up entire stack:

    docker-compose up

Admin web interface should now be available on `http://localhost:8080` and the frontend website on `http://localhost:8081`.
