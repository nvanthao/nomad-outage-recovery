data_dir   = "/var/lib/nomad"
bind_addr  = "0.0.0.0"
log_level  = "DEBUG"
datacenter = "dc1"

client {
  enabled = true
}

plugin "raw_exec" {
  config {
    enabled    = true
    no_cgroups = true
  }
}