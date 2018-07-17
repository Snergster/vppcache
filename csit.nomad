job "csitshim" {
  datacenters = ["yul1"]
  type = "system"
  group "csitshim" {
    count = 1
    task "csitshim" {
      driver = "raw_exec"
      config {
        command = "docker"
        args = ["run","-i","-P","-p","6022:22","-p","8080:8080","-v","/var/run/docker.sock:/var/run/docker.sock","registry.fdiopoc.net/vpp/ubuntu16thin"]
      }
      resources {
        cpu    = 100 # 100 MHz
        memory = 128 # 128 MB
        network {
          mbits = 10
          port "ssh" {
              static = 6022
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