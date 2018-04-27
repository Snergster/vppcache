FROM snergster/vpp-ubuntu18:latest
#FROM goodubuntu18:latest

ADD files/99fd.io.list /etc/apt/sources.list.d/99fd.io.list
RUN apt update && apt install -y vpp-dpdk-dev vpp-dpdk-dkms || true
RUN mkdir -p /w/dpdk && cd /w/dpdk; apt-get download vpp-dpdk-dkms

RUN mkdir -p /w/workspace/vpp-verify-master-ubuntu1804 && mkdir -p /home/jenkins
RUN apt-get update -qq && apt-get install -y apt-utils
RUN apt-get purge -y default-jre-headless openjdk-9-jdk-headless openjdk-9-jre-headless || true

ADD files/default-jdk-headless_1.8-59ubuntu2_amd64.deb /tmp/default-jdk-headless_1.8-59ubuntu2_amd64.deb
ADD files/default-jre-headless_1.8-59ubuntu2_amd64.deb /tmp/default-jre-headless_1.8-59ubuntu2_amd64.deb
#RUN apt-get install -y /tmp/default-jre-headless_1.8-59ubuntu2_amd64.deb /tmp/default-jdk-headless_1.8-59ubuntu2_amd64.deb && apt-mark hold default-jdk-headless && apt-mark hold default-jre-headless
RUN apt-get install -y /tmp/default-jre-headless_1.8-59ubuntu2_amd64.deb /tmp/default-jdk-headless_1.8-59ubuntu2_amd64.deb
ADD files/jre /etc/apt/preferences.d/jre
#RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
RUN dpkg -l | grep default-j
#RUN apt-get update && apt-get install default-jdk-headless
#RUN apt-get install -y /tmp/default-jdk-headless_1.8-59ubuntu2_amd64.deb && apt-mark hold default-jre-headless
RUN git clone https://gerrit.fd.io/r/vpp /w/workspace/vpp-verify-master-ubuntu1804 && cd /w/workspace/vpp-verify-master-ubuntu1804; make UNATTENDED=yes install-dep && make UNATTENDED=yes test-dep && rm -rf /w/workspace/vpp-verify-master-ubuntu1804
