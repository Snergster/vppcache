FROM snergster/vpp-centos

ADD files/fdio-master.repo /etc/yum.repos.d/fdio-master.repo
#RUN yum -y install vpp-dpdk-devel
RUN mkdir -p /w/workspace/vpp-master-centos7 && mkdir -p /home/jenkins
RUN git clone https://gerrit.fd.io/r/vpp /w/workspace/vpp-master-centos7 && cd /w/workspace/vpp-master-centos7; make UNATTENDED=yes install-dep && make UNATTENDED=yes test-checkstyle && rm -rf /w/workspace/vpp-master-centos7
#jenkins bits
RUN rm -rf /home/jenkins && useradd -ms /bin/bash jenkins && chown -R jenkins /w && chown -R jenkins /var/ccache && chown -R jenkins /var/cache/vpp && mv /usr/bin/sar /usr/bin/sar.old && ln -s /bin/true /usr/bin/sar
ADD files/jenkins /etc/sudoers.d/jenkins
ENV PATH=/root/.local/bin:/home/jenkins/.local/bin:${PATH}
