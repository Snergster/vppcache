job "cachebuild" {
  datacenters = ["yul1"]

  type = "batch"
  periodic {
    cron  = "15 7 * * 1,3,5 *"
    prohibit_overlap = true
    time_zone = "UTC"
  }

  constraint {
    attribute = "${node.class}"
    value     = "master"
  }

  group "builder" {
    task "building" {
      driver = "raw_exec"
      config {
        args = [""]
        command = "/root/vppcache/builder"
      }
    }
  }
}
