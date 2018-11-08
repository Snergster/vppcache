FROM registry.fdiopoc.net/vpp/ubuntu16

# ADD files/99fd.io.list /etc/apt/sources.list.d/99fd.io.list
# #ADD files/fdio_master.list /etc/apt/sources.list.d/fdio_master.list

# ADD files/sshconfig /root/.ssh/config
# ADD files/badkey /root/.ssh/id_rsa
# RUN chmod 600 /root/.ssh/id_rsa
# RUN curl -L https://packagecloud.io/fdio/master/gpgkey |sudo apt-key add -

#RUN apt update && apt install -y vpp-dpdk-dev vpp-dpdk-dkms 
#RUN mkdir -p /w/dpdk && cd /w/dpdk; apt-get download vpp-dpdk-dkms
#RUN mkdir -p /w/workspace/vpp-test-poc-verify-master-ubuntu1604 && mkdir -p /home/jenkins && mkdir -p /run/shm
#RUN mkdir -p /w/workspace && mkdir -p /home/jenkins && mkdir -p /run/shm && rm -rf /w/workspace/vpp-*
#RUN git clone https://gerrit.fd.io/r/vpp /w/workspace/vpp-test-poc-verify-master-ubuntu1604 && cd /w/workspace/vpp-test-poc-verify-master-ubuntu1604; make UNATTENDED=yes install-dep && make UNATTENDED=yes test-dep && rm -rf /w/workspace/vpp-test-poc-verify-master-ubuntu1604
#RUN mkdir -p /run/shm && rm -f /var/cache/vpp/python/papi-install.done && rm -f /var/cache/vpp/python/virtualenv/lib/python2.7/site-packages/vpp_papi-*-py2.7.egg

# RUN rm -rf /home/jenkins && useradd -ms /bin/bash jenkins && chown -R jenkins /w && chown -R jenkins /var/ccache && chown -R jenkins /var/cache/vpp
# ADD files/jenkins /etc/sudoers.d/jenkins
# #ADD files/bash /root/.bash_profile
# #ADD files/bash /home/jenkins/.bash_profile
# ENV PATH=/root/.local/bin:/home/jenkins/.local/bin:${PATH}
# USER jenkins
#ADD files/cmake-3.11.0-Linux-x86_64.tar.gz /tmp/cmake.tar.gz
RUN apt-get purge cmake -y
RUN wget -O /tmp/cmake.tar.gz https://cmake.org/files/v3.12/cmake-3.12.4-Linux-x86_64.tar.gz
RUN tar -xvf /tmp/cmake.tar.gz && cp -r /tmp/cmake-3.12.4-Linux-x86_64/bin /usr/ && cp -r /tmp/cmake-3.12.4-Linux-x86_64/share /usr/ && sudo cp -r /tmp/cmake-3.12.4-Linux-x86_64/doc /usr/share/ && sudo cp -r /tmp/cmake-3.12.4-Linux-x86_64/man /usr/share/
