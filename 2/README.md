# Scenario 

```mermaid
flowchart TB
    subgraph consul-servers
        consul-server-1
        consul-server-2
        consul-server-3
    end
    consul-1 --> consul-servers
    consul-2 --> consul-servers
    consul-3 --> consul-servers
    consul-4 --> consul-servers
    consul-5 --> consul-servers
    consul-6 --> consul-servers
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
- Kill 2 Consul servers

# Tasks

- Observe Consul UI, Nomad UI, Nomad Server, Nomad Client logs
- How to recover from the outage?
- What are steps to be done post recovery?