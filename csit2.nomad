job "csit" {
  datacenters = ["yul1"]
  type = "system"
  group "csit" {
    restart {
      interval = "1m"
      attempts = 3
      delay    = "15s"
      mode     = "delay"
            }
    count = 1
    task "csit" {
      driver = "docker"
      config {
        volumes = [
          "/var/run/docker.sock:/var/run/docker.sock"
          ]
        image = "snergster/vpp-ubuntu16-min"
        privileged = true
      }
#      constraint {
#        attribute = "${node.class}"
#        value     = "master"
#      }
      resources {
        cpu    = 100 # 100 MHz
        memory = 128 # 128 MB
        network {
          mbits = 10
          port "ssh" {
              static = 6022
          }
          port "docker" {
              static = 8080
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