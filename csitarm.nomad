job "csit" {
  datacenters = ["yul1"]
  type = "system"
  constraint {
    attribute = "${node.class}"
    value     = "csitarm"
  }
  group "csit" {
    restart {
      interval = "1m"
      attempts = 3
      delay    = "15s"
      mode     = "delay"
            }
    count = 1
    task "ubuntu18" {
      driver = "docker"
      config {
        network_mode = "host"
        pid_mode = "host"
        volumes = [
          "/var/run/docker.sock:/var/run/docker.sock"
          ]
        image = "snergster/csit-arm-shim"
        privileged = true
      }
      resources {
#        cpu    = 100 # 100 MHz
#        memory = 128 # 128 MB
        network {
          mbits = 10
          port "ssh" {
              static = 6022
          }
          port "ssh2" {
              static = 6023
          }
        }
      }
    }
  }
}