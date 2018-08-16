FROM snergster/vpp-ubuntu18
MAINTAINER Ed Kern <ejk@cisco.com>
LABEL Description="VPP ubuntu 18 baseline and docker/ssh" 
LABEL Vendor="cisco.com" 
LABEL Version="1.1"


# Setup the environment
ENV DEBIAN_FRONTEND=noninteractive
ENV MAKE_PARALLEL_FLAGS -j 4
ENV DOCKER_TEST=True
ENV VPP_ZOMBIE_NOCHECK=1
ENV DPDK_DOWNLOAD_DIR=/w/Downloads
ENV VPP_PYTHON_PREFIX=/var/cache/vpp/python

ADD files/sshconfig /root/.ssh/config
ADD files/wrapdocker /usr/local/bin/wrapdocker
RUN chmod +x /usr/local/bin/wrapdocker


RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
RUN add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" 

RUN apt-get -q update && \
    apt-get install -y -qq \
        docker-ce \
        tzdata \
        locales \
        && rm -rf /var/lib/apt/lists/*

# Configure locales
RUN locale-gen en_US 


RUN mkdir /var/run/sshd
RUN echo 'root:Csit1234' | chpasswd
RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# SSH login fix. Otherwise user is kicked off after login
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
EXPOSE 8080

VOLUME /var/lib/docker
RUN echo 'Port 6023' >>/etc/ssh/sshd_config
ADD files/badkeypub /root/.ssh/authorized_keys

