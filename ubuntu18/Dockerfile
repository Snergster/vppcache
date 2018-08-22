FROM snergster/vpp-ubuntu18:latest

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

RUN git clone https://gerrit.fd.io/r/vpp /w/workspace/vpp-verify-master-ubuntu1804 && cd /w/workspace/vpp-verify-master-ubuntu1804; make UNATTENDED=yes install-dep && make UNATTENDED=yes test-dep && rm -rf /w/workspace/vpp-verify-master-ubuntu1804
