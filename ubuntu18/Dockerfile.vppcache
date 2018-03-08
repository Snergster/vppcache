FROM snergster/vpp-ubuntu18

RUN mkdir -p /w/dpdk && cd /w/dpdk; apt-get download vpp-dpdk-dkms
RUN mkdir -p /w/workspace/vpp-verify-master-ubuntu1804 
RUN git clone https://gerrit.fd.io/r/vpp /w/workspace/vpp-verify-master-ubuntu1804 && cd /w/workspace/vpp-verify-master-ubuntu1804; make UNATTENDED=yes install-dep && rm -rf /w/workspace/vpp-verify-master-ubuntu1804
ENV VPP_ZOMBIE_NOCHECK=1
RUN mkdir -p /run/shm

