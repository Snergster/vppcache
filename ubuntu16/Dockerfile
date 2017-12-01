FROM snergster/vpp-ubuntu16

RUN mkdir -p /w/workspace && git clone --depth=1 https://gerrit.fd.io/r/vpp /w/workspace/ubuntu && /w/workspace/ubuntu/build-root/vagrant/build.sh && rm -rf /w/workspace/ubuntu
