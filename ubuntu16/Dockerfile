FROM snergster/vpp-ubuntu16

ADD files/99fd.io.list /etc/apt/sources.list.d/99fd.io.list
RUN apt update && apt install -y vpp-dpdk-dev vpp-dpdk-dkms
RUN mkdir -p /w/dpdk && cd /w/dpdk; apt-get download vpp-dpdk-dkms
RUN mkdir -p /w/workspace/vpp-test-poc-verify-master-ubuntu1604 
RUN git clone https://gerrit.fd.io/r/vpp /w/workspace/vpp-test-poc-verify-master-ubuntu1604 && cd /w/workspace/vpp-test-poc-verify-master-ubuntu1604; make UNATTENDED=yes install-dep && rm -rf /w/workspace/vpp-test-poc-verify-master-ubuntu1604
ENV VPP_ZOMBIE_NOCHECK=1

