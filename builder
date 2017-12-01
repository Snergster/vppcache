#!/bin/bash
/usr/bin/docker pull snergster/vpp-ubuntu16
/usr/bin/docker build -t registry.fdiopoc.net/vpp/ubuntu16 /root/vppcache/ubuntu16/
/usr/bin/docker push registry.fdiopoc.net/vpp/ubuntu16
/usr/bin/docker pull snergster/vpp-opensuse
/usr/bin/docker build -t registry.fdiopoc.net/vpp/opensuse /root/vppcache/opensuse/
/usr/bin/docker push registry.fdiopoc.net/vpp/opensuse
/usr/bin/docker pull snergster/vpp-centos
/usr/bin/docker build -t registry.fdiopoc.net/vpp/centos /root/vppcache/centos/
/usr/bin/docker push registry.fdiopoc.net/vpp/centos
