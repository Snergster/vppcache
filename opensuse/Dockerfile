FROM snergster/vpp-opensuse

RUN mkdir -p /w/workspace 
RUN git clone https://gerrit.fd.io/r/vpp /w/workspace/opensuse && cd /w/workspace/opensuse; make install-dep && make UNATTENDED=yes dpdk-install-dev && /w/workspace/opensuse/build-root/vagrant/build.sh && cd /w; rm -rf /w/workspace/opensuse
