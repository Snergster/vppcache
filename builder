#!/bin/bash

#/usr/bin/docker pull snergster/vpp-opensuse
#/usr/bin/docker build --force-rm --no-cache --pull -t registry.fdiopoc.net/vpp/opensuse /root/vppcache/opensuse/
#/usr/bin/docker push registry.fdiopoc.net/vpp/opensuse
/usr/bin/docker pull snergster/vpp-centos
/usr/bin/docker build --force-rm --no-cache --pull -t registry.fdiopoc.net/vpp/centos /root/vppcache/centos/
/usr/bin/docker push registry.fdiopoc.net/vpp/centos
#/usr/bin/docker build --force-rm --no-cache -t registry.fdiopoc.net/vpp/opensuse15 /root/vppcache/opensuse15
#/usr/bin/docker push registry.fdiopoc.net/vpp/opensuse15
/usr/bin/docker pull snergster/vpp-ubuntu18
/usr/bin/docker build --force-rm --no-cache -t registry.fdiopoc.net/vpp/ubuntu18 /root/vppcache/ubuntu18/
/usr/bin/docker push registry.fdiopoc.net/vpp/ubuntu18
/usr/bin/docker pull snergster/vpp-ubuntu16
/usr/bin/docker build --force-rm --no-cache --pull -t registry.fdiopoc.net/vpp/ubuntu16 /root/vppcache/ubuntu16/
/usr/bin/docker push registry.fdiopoc.net/vpp/ubuntu16
/usr/bin/docker build --pull -t registry.fdiopoc.net/vpp/ubuntu16j /root/vppcache/ubuntu16j/
/usr/bin/docker push registry.fdiopoc.net/vpp/ubuntu16j
/usr/bin/docker image tag snergster/vpp-ubuntu16 registry.fdiopoc.net/vpp/ubuntu16/nocache
/usr/bin/docker push registry.fdiopoc.net/vpp/ubuntu16/nocache