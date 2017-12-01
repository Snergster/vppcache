FROM snergster/vpp-opensuse

RUN mkdir -p /w/workspace && git clone --depth=1 https://gerrit.fd.io/r/vpp /w/workspace/opensuse && /w/workspace/opensuse/build-root/vagrant/build.sh && rm -rf /w/workspace/opensuse
