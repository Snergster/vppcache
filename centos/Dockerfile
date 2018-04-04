FROM snergster/vpp-centos

ADD files/fdio-master.repo /etc/yum.repos.d/fdio-master.repo
RUN yum -y install vpp-dpdk-devel
RUN mkdir -p /w/workspace/vpp-test-poc-verify-master-centos7
RUN mkdir -p /w/Downloads
RUN wget -O /w/Downloads/nasm-2.13.01.tar.xz http://www.nasm.us/pub/nasm/releasebuilds/2.13.01/nasm-2.13.01.tar.xz
RUN wget -O /w/Downloads/dpdk-18.02.tar.xz http://fast.dpdk.org/rel/dpdk-18.02.tar.xz
RUN wget -O /w/Downloads/dpdk-17.11.tar.xz http://fast.dpdk.org/rel/dpdk-17.11.tar.xz
RUN wget -O /w/Downloads/v0.47.tar.gz http://github.com/01org/intel-ipsec-mb/archive/v0.47.tar.gz
RUN wget -O /w/Downloads/v0.48.tar.gz http://github.com/01org/intel-ipsec-mb/archive/v0.48.tar.gz
ENV DPDK_DOWNLOAD_DIR=/w/Downloads
RUN git clone https://gerrit.fd.io/r/vpp /w/workspace/vpp-test-poc-verify-master-centos7 && cd /w/workspace/vpp-test-poc-verify-master-centos7; make UNATTENDED=yes install-dep && make UNATTENDED=yes test-dep && rm -rf /w/workspace/vpp-test-poc-verify-master-centos7
