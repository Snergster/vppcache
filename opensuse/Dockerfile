FROM snergster/vpp-opensuse

RUN mkdir -p /w/workspace 
RUN mkdir -p /w/Downloads
RUN git clone https://gerrit.fd.io/r/vpp /w/workspace/opensuse && cd /w/workspace/opensuse; make install-dep && cd /w; rm -rf /w/workspace/opensuse
RUN wget -O /w/Downloads/nasm-2.13.01.tar.xz http://www.nasm.us/pub/nasm/releasebuilds/2.13.01/nasm-2.13.01.tar.xz
RUN wget -O /w/Downloads/dpdk-18.02.tar.xz http://fast.dpdk.org/rel/dpdk-18.02.tar.xz
RUN wget -O /w/Downloads/dpdk-17.11.tar.xz http://fast.dpdk.org/rel/dpdk-17.11.tar.xz
RUN wget -O /w/Downloads/v0.47.tar.gz http://github.com/01org/intel-ipsec-mb/archive/v0.47.tar.gz
RUN wget -O /w/Downloads/v0.48.tar.gz http://github.com/01org/intel-ipsec-mb/archive/v0.48.tar.gz
ENV DPDK_DOWNLOAD_DIR=/w/Downloads
