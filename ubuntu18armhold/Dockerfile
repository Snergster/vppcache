FROM snergster/ubuntu18arm
MAINTAINER Ed Kern <ejk@cisco.com>
LABEL Description="arm VPP ubuntu 18 baseline hold"
LABEL Vendor="arm.com"
LABEL Version="1.0"

# Setup the environment
ENV DEBIAN_FRONTEND=noninteractive
ENV DOCKER_TEST=True
ENV DPDK_DOWNLOAD_DIR=/w/Downloads
ENV VPP_ZOMBIE_NOCHECK=1


RUN curl -L https://packagecloud.io/fdio/master/gpgkey |sudo apt-key add -
RUN gem install rake
RUN gem install package_cloud
RUN gem install facter
RUN curl -s https://packagecloud.io/install/repositories/fdio/master/script.deb.sh | sudo bash

RUN git clone https://gerrit.fd.io/r/vpp /workspace/ubuntu16 && cd /workspace/ubuntu16; make UNATTENDED=yes install-dep && rm -rf /workspace/ubuntu16 && rm -rf /var/lib/apt/lists/*
RUN mkdir -p /run/shm && rm -f /var/cache/vpp/python/papi-install.done && rm -f /var/cache/vpp/python/virtualenv/lib/python2.7/site-packages/vpp_papi-*-py2.7.egg
#jenkins bits
#RUN rm -rf /home/jenkins && useradd -ms /bin/bash jenkins && chown -R jenkins /w && chown -R jenkins /var/ccache




