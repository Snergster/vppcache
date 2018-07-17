job "csitshim" {
  datacenters = ["yul1"]
  type = "system"
  group "csitshim" {
    count = 1
    task "csitshim" {
      driver = "docker"
      config {
        args = [""]
        volumes = [
          "/var/run/docker.sock:/var/run/docker.sock"
          ]
        image = "registry.fdiopoc.net/vpp/ubuntu16thin"
        privileged = "true"
      }
      constraint {
        attribute = "${node.class}"
        value     = "master"
      }
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