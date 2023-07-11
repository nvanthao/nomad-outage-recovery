server           = true
log_level        = "DEBUG"
data_dir         = "/consul/data"
bootstrap_expect = 3
client_addr      = "0.0.0.0"
bind_addr        = "0.0.0.0"

ui_config {
  enabled = true
}

retry_join = ["consul-server-1", "consul-server-2", "consul-server-3"]