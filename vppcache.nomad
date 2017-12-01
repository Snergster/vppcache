job "cachebuild" {
  datacenters = ["yul1"]

  type = "batch"
  // periodic {
  //   cron  = "15 7 * * 1,3,5 *"
  //   prohibit_overlap = true
  //   time_zone = "UTC"
  // }

  constraint {
    attribute = "${node.class}"
    value     = "master"
  }

  group "builder" {
    task "ubuntu16" {
      driver = "exec"
      config {
        command = "docker pull snergster/vpp-ubuntu16 && docker build -t registry.fdiopoc.net/vpp/ubuntu16 /root/vpp-ubuntu/ && docker push registry.fdiopoc.net/vpp/ubuntu16"
      }
    },
    task "centos" {
      driver = "exec"
      config {
        command = "docker pull snergster/vpp-centos && docker build -t registry.fdiopoc.net/vpp/centos /root/vpp-centos/ && docker push registry.fdiopoc.net/vpp/centos"
      }
    },
    task "opensuse" {
      driver = "exec"
      config {
        command = "docker pull snergster/opensuse && docker build -t registry.fdiopoc.net/vpp/opensuse /root/opensuse/ && docker push registry.fdiopoc.net/vpp/opensuse"
      }
    }
  }
}
