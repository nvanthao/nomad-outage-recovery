# Nomad Docker

This repro provides different Nomad setups created with Docker Compose, with objective of getting familiar with Nomad outage recovery procedures.

## Prerequisites

- Docker, recommend to install [OrbStack](https://orbstack.dev/download)
- [Portainer](https://docs.portainer.io/start/install-ce/server/docker/linux#deployment), optional, to manage Docker containers created with the lab 
- tmux, optional, to monitor the container logs easily

## Instructions

- cd into each lab folder, go through `README` and run `docker compose up -d`
- follow the lab instructions
- once completed, destroy the lab with `docker compose down`

## Notes

Currently the Dockerfile build is using `dumb-init` to simplify the setup, where the logs of Consul/Nomad/Vault in a container can be retrieved from

```
/var/log/consul.log
/var/log/nomad.log
/var/log/vault.log
```