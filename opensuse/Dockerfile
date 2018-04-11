FROM snergster/vpp-opensuse

RUN mkdir -p /w/workspace
RUN mkdir -p /home/jenkins
RUN git clone https://gerrit.fd.io/r/vpp /w/workspace/opensuse && cd /w/workspace/opensuse; make install-dep && cd /w; rm -rf /w/workspace/opensuse
