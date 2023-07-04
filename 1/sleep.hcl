job "foo" {
  datacenters = ["dc1"]
  type        = "service"
  group "foo" {
    task "foo" {

      driver = "raw_exec"
      config {
        command = "bash"
        args    = ["-c", "while true; do sleep 5; echo 'This is the way'; done"]
      }

      resources {
        cpu    = 20
        memory = 50
      }

      logs {
        max_files     = 3
        max_file_size = 10
      }
    }
  }
}
