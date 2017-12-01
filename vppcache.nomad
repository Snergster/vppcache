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
    task "building" {
      driver = "raw_exec"
      config {
        command = "/root/vppcache/builder"
    //   }
    // },
    // task "centos" {
    //   driver = "raw_exec"
    //   config {
    //     //command = " /usr/bin/docker pull snergster/vpp-centos &&  /usr/bin/docker build -t registry.fdiopoc.net/vpp/centos /root/vppcache/centos/ &&  /usr/bin/docker push registry.fdiopoc.net/vpp/centos"
    //     command = "/root/vppcache/centos/centos"
    //   }
    // },
    // task "opensuse" {
    //   driver = "raw_exec"
    //   config {
    //     //command = " /usr/bin/docker pull snergster/opensuse &&  /usr/bin/docker build -t registry.fdiopoc.net/vpp/opensuse /root/vppcache/opensuse/ &&  /usr/bin/docker push registry.fdiopoc.net/vpp/opensuse"
    //     command = "/root/vppcache/opensuse/opensuse"
      }
    }
  }
}
