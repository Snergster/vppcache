job "csitshim" {
  datacenters = ["yul1"]
  type = "system"
  group "csitshim" {
    count = 1
    task "csitshim" {
      driver = "raw_exec"
      config {
        command = "/root/vppcache/csitshim"
        args = [""]
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