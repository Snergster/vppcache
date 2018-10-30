FROM snergster/vpp-opensuse

RUN mkdir -p /w/workspace
RUN mkdir -p /home/jenkins
RUN git clone https://gerrit.fd.io/r/vpp /w/workspace/opensuse && cd /w/workspace/opensuse; make install-dep && cd /w; rm -rf /w/workspace/opensuse
#jenkins bits
RUN rm -rf /home/jenkins && useradd -ms /bin/bash jenkins && chown -R jenkins /w && chown -R jenkins /var/ccache && chown -R jenkins /var/cache/vpp
ADD files/jenkins /etc/sudoers.d/jenkins
ENV PATH=/root/.local/bin:/home/jenkins/.local/bin:${PATH}
