FROM snergster/vpp-ubuntu18:latest

ADD files/sshconfig /root/.ssh/config
ADD files/badkey /root/.ssh/id_rsa
RUN chmod 600 /root/.ssh/id_rsa

# RUN curl -L https://packagecloud.io/fdio/master/gpgkey |sudo apt-key add -
# ADD files/99fd.io.list /etc/apt/sources.list.d/99fd.io.list
# ADD files/98fd.io.list /etc/apt/sources.list.d/98fd.io.list

# RUN apt update && apt install -y vpp-dpdk-dev vpp-dpdk-dkms || true
# RUN mkdir -p /w/dpdk && cd /w/dpdk; apt-get download vpp-dpdk-dkms || true

# RUN mkdir -p /w/workspace/vpp-verify-master-ubuntu1804 && mkdir -p /home/jenkins
# RUN apt-get update -qq && apt-get install -y apt-utils
# RUN apt-get purge -y default-jre-headless openjdk-9-jdk-headless openjdk-9-jre-headless || true

# ADD files/default-jdk-headless_1.8-59ubuntu2_amd64.deb /tmp/default-jdk-headless_1.8-59ubuntu2_amd64.deb
# ADD files/default-jre-headless_1.8-59ubuntu2_amd64.deb /tmp/default-jre-headless_1.8-59ubuntu2_amd64.deb

# RUN apt-get install -y /tmp/default-jre-headless_1.8-59ubuntu2_amd64.deb /tmp/default-jdk-headless_1.8-59ubuntu2_amd64.deb
# ADD files/jre /etc/apt/preferences.d/jre

# RUN dpkg -l | grep default-j

#RUN export SET_JDK_VERSION='8';/usr/local/bin/lf-update-java-alternatives
RUN git clone https://gerrit.fd.io/r/vpp /w/workspace/vpp-verify-master-ubuntu1804 && cd /w/workspace/vpp-verify-master-ubuntu1804; make UNATTENDED=yes install-dep && rm -rf /w/workspace/vpp-verify-master-ubuntu1804
#jenkins bits
RUN rm -rf /home/jenkins && useradd -ms /bin/bash jenkins && chown -R jenkins /w && chown -R jenkins /var/ccache && chown -R jenkins /var/cache/vpp
ADD files/jenkins /etc/sudoers.d/jenkins
ENV PATH=/root/.local/bin:/home/jenkins/.local/bin:${PATH}
