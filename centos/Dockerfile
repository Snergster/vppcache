FROM snergster/vpp-centos

ADD files/fdio-master.repo /etc/yum.repos.d/fdio-master.repo
RUN yum -y install vpp-dpdk-devel
RUN mkdir -p /w/workspace/vpp-test-poc-verify-master-centos7
RUN git clone https://gerrit.fd.io/r/vpp /w/workspace/vpp-test-poc-verify-master-centos7 && /w/workspace/vpp-test-poc-verify-master-centos7/build-root/vagrant/build.sh && rm -rf /w/workspace/vpp-test-poc-verify-master-centos7
