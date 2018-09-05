job "csit" {
  datacenters = ["yul1"]
  type = "system"
  constraint {
    attribute = "${node.class}"
    value     = "csit"
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
        volumes = [
          "/var/run/docker.sock:/var/run/docker.sock"
          ]
        image = "registry.fdiopoc.net/vpp/ubuntu18ssh"
        privileged = true
      }
      resources {
        cpu    = 100 # 100 MHz
        memory = 128 # 128 MB
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
      service {
        name = "csit"
        tags = [ "csit" ]
        port = "ssh"
        check {
          type     = "tcp"
          interval = "10s"
          timeout  = "2s"
        }
      }
    }
  }
}