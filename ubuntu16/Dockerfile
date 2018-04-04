FROM snergster/vpp-ubuntu16

ADD files/99fd.io.list /etc/apt/sources.list.d/99fd.io.list
RUN apt update && apt install -y vpp-dpdk-dev vpp-dpdk-dkms iperf3
RUN mkdir -p /w/dpdk && cd /w/dpdk; apt-get download vpp-dpdk-dkms
RUN mkdir -p /w/workspace/vpp-test-poc-verify-master-ubuntu1604
RUN mkdir -p /w/Downloads
RUN wget -O /w/Downloads/nasm-2.13.01.tar.xz http://www.nasm.us/pub/nasm/releasebuilds/2.13.01/nasm-2.13.01.tar.xz
RUN wget -O /w/Downloads/dpdk-18.02.tar.xz http://fast.dpdk.org/rel/dpdk-18.02.tar.xz
RUN wget -O /w/Downloads/dpdk-17.11.tar.xz http://fast.dpdk.org/rel/dpdk-17.11.tar.xz
RUN wget -O /w/Downloads/v0.47.tar.gz http://github.com/01org/intel-ipsec-mb/archive/v0.47.tar.gz
RUN wget -O /w/Downloads/v0.48.tar.gz http://github.com/01org/intel-ipsec-mb/archive/v0.48.tar.gz
ENV DPDK_DOWNLOAD_DIR=/w/Downloads
RUN mkdir -p /var/cache/vpp/python
ENV VPP_PYTHON_PREFIX=/var/cache/vpp/python
RUN git clone https://gerrit.fd.io/r/vpp /w/workspace/vpp-test-poc-verify-master-ubuntu1604 && cd /w/workspace/vpp-test-poc-verify-master-ubuntu1604; make UNATTENDED=yes install-dep && make UNATTENDED=yes test-dep && rm -rf /w/workspace/vpp-test-poc-verify-master-ubuntu1604
ENV VPP_ZOMBIE_NOCHECK=1
RUN mkdir -p /run/shm
