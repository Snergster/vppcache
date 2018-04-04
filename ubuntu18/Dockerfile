FROM snergster/vpp-ubuntu18:latest

RUN mkdir -p /w/workspace/vpp-verify-master-ubuntu1804
RUN git clone https://gerrit.fd.io/r/vpp /w/workspace/vpp-verify-master-ubuntu1804 && cd /w/workspace/vpp-verify-master-ubuntu1804; make UNATTENDED=yes install-dep && make UNATTENDED=yes test-dep && rm -rf /w/workspace/vpp-verify-master-ubuntu1804
