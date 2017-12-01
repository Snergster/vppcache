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
        command = "/usr/bin/sudo /usr/bin/docker pull snergster/vpp-ubuntu16 && /usr/bin/sudo /usr/bin/docker build -t registry.fdiopoc.net/vpp/ubuntu16 /root/vppcache/ubuntu16/ && /usr/bin/sudo /usr/bin/docker push registry.fdiopoc.net/vpp/ubuntu16"
      }
    },
    task "centos" {
      driver = "exec"
      config {
        command = "/usr/bin/sudo /usr/bin/docker pull snergster/vpp-centos && /usr/bin/sudo /usr/bin/docker build -t registry.fdiopoc.net/vpp/centos /root/vppcache/centos/ && /usr/bin/sudo /usr/bin/docker push registry.fdiopoc.net/vpp/centos"
      }
    },
    task "opensuse" {
      driver = "exec"
      config {
        command = "/usr/bin/sudo /usr/bin/docker pull snergster/opensuse && /usr/bin/sudo /usr/bin/docker build -t registry.fdiopoc.net/vpp/opensuse /root/vppcache/opensuse/ && /usr/bin/sudo /usr/bin/docker push registry.fdiopoc.net/vpp/opensuse"
      }
    }
  }
}
