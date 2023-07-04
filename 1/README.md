# Scenario 

```mermaid
flowchart TB
    consul-server
    consul-1 --> consul-server
    consul-2 --> consul-server
    consul-3 --> consul-server
    consul-4 --> consul-server
    consul-5 --> consul-server
    consul-6 --> consul-server
    subgraph nomad-server-1
        nomad-1
        consul-1
    end
    subgraph nomad-server-2
        nomad-2
        consul-2
    end
    subgraph nomad-server-3
        nomad-3
        consul-3
    end
    subgraph nomad-client-1
        nomad-c1
        consul-4
    end
    subgraph nomad-client-2
        nomad-c2
        consul-5
    end
    subgraph nomad-client-3
        nomad-c3
        consul-6
    end
```


# Steps

- Let's run the setup with `docker compose up -d`
- Observe Consul UI and Nomad UI
- Run a sample job `nomad run sleep.hcl`  
- Observe Nomad Server logs and Nomad Client logs
- Kill 2 Nomad server containers

# Tasks

- Observe Consul UI, Nomad UI, Nomad Server, Nomad Client logs
- How to recover from the outage?
- What are steps to be done post recovery?

# Helpers

```
# view current containers
docker ps

# view current containers and their IPs
docker ps -q | xargs -n 1 docker inspect --format '{{ .Name }} {{range .NetworkSettings.Networks}} {{.IPAddress}}{{end}}' | sed 's#^/##';

# view running processes in a container
docker exec <container-id> ps aux  

# reload a process config
docker exec <container-id> sh -c 'kill -HUP $(pidof nomad)'
```