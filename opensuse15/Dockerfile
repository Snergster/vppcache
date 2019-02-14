FROM snergster/vpp-opensuse15

MAINTAINER Ed Kern <ejk@cisco.com>
LABEL Description="VPP opensuse baseline"
LABEL Vendor="cisco.com"
LABEL Version="2.0"


# Setup the environment
ENV DEBIAN_FRONTEND=noninteractive

RUN crudini --set /usr/lib/os-release '' ID '"opensuse-leap"'

#
RUN git clone https://gerrit.fd.io/r/vpp /w/workspace/opensuse && cd /w/workspace/opensuse; make install-dep && cd /w; rm -rf /w/workspace/opensuse
#jenkins bits
RUN rm -rf /home/jenkins && useradd -ms /bin/bash jenkins && chown -R jenkins /w && chown -R jenkins /var/ccache
ADD files/jenkins /etc/sudoers.d/jenkins
ENV PATH=/root/.local/bin:/home/jenkins/.local/bin:${PATH}
