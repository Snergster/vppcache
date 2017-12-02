FROM snergster/vpp-opensuse

RUN mkdir -p /w/workspace 
RUN git clone https://gerrit.fd.io/r/vpp /w/workspace/opensuse && /w/workspace/opensuse/build-root/vagrant/build.sh && rm -rf /w/workspace/opensuse
