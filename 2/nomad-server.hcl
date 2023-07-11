data_dir   = "/var/lib/nomad"
bind_addr  = "0.0.0.0"
log_level  = "DEBUG"
datacenter = "dc1"

server {
  enabled          = true
  bootstrap_expect = 3
}
