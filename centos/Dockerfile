FROM snergster/vpp-centos

RUN mkdir -p /w/workspace 
RUN git clone https://gerrit.fd.io/r/vpp /w/workspace/centos && /w/workspace/centos/build-root/vagrant/build.sh && rm -rf /w/workspace/centos
