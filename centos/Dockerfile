FROM snergster/vpp-centos

ADD files/fdio-master.repo /etc/yum.repos.d/fdio-master.repo
RUN yum -y install vpp-dpdk-devel
RUN mkdir -p /w/workspace/vpp-test-poc-verify-master-centos7 && mkdir -p /home/jenkins
RUN git clone https://gerrit.fd.io/r/vpp /w/workspace/vpp-test-poc-verify-master-centos7 && cd /w/workspace/vpp-test-poc-verify-master-centos7; make UNATTENDED=yes install-dep && make UNATTENDED=yes test-checkstyle && rm -rf /w/workspace/vpp-test-poc-verify-master-centos7
