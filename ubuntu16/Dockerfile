FROM snergster/vpp-ubuntu16

ADD files/99fd.io.list /etc/apt/sources.list.d/99fd.io.list
RUN apt update && apt install -y vpp-dpdk-dev vpp-dpdk-dkms 
RUN mkdir -p /w/workspace/vpp-test-poc-verify-master-ubuntu1604 
RUN git clone https://gerrit.fd.io/r/vpp /w/workspace/vpp-test-poc-verify-master-ubuntu1604 && /w/workspace/vpp-test-poc-verify-master-ubuntu1604/build-root/vagrant/build.sh && rm -rf /w/workspace/vpp-test-poc-verify-master-ubuntu1604

