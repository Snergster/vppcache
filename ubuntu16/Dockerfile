FROM snergster/vpp-ubuntu16

RUN mkdir -p /w/workspace 
RUN git clone https://gerrit.fd.io/r/vpp /w/workspace/ubuntu && /w/workspace/ubuntu/build-root/vagrant/build.sh && rm -rf /w/workspace/ubuntu
