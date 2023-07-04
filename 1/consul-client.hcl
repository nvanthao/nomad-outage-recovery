data_dir    = "/var/lib/consul"
bind_addr   = "0.0.0.0"
client_addr = "0.0.0.0"
log_level   = "DEBUG"

ui_config {
  enabled = true
}

retry_join = ["consul-server"]