FROM registry.fdiopoc.net/vpp/ubuntu18
#FROM snergster/vpp-ubuntu18:latest

#ADD files/sshconfig /root/.ssh/config
#ADD files/badkey /root/.ssh/id_rsa
#RUN chmod 600 /root/.ssh/id_rsa



# RUN dpkg -l | grep default-j

#RUN export SET_JDK_VERSION='8';/usr/local/bin/lf-update-java-alternatives
#RUN git clone https://gerrit.fd.io/r/vpp /w/workspace/vpp-verify-master-ubuntu1804 && cd /w/workspace/vpp-verify-master-ubuntu1804; make UNATTENDED=yes install-dep && rm -rf /w/workspace/vpp-verify-master-ubuntu1804
#jenkins bits
#RUN rm -rf /home/jenkins && useradd -ms /bin/bash jenkins && chown -R jenkins /w && chown -R jenkins /var/ccache && chown -R jenkins /var/cache/vpp
#ADD files/jenkins /etc/sudoers.d/jenkins
#ENV PATH=/root/.local/bin:/home/jenkins/.local/bin:${PATH}
#RUN update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-7 800 --slave /usr/bin/g++ g++ /usr/bin/g++-7 && update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-8 700 --slave /usr/bin/g++ g++ /usr/bin/g++-8
RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && dpkg -i google-chrome-stable_current_amd64.deb && rm google-chrome-stable_current_amd64.deb
