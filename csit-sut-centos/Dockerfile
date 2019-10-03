FROM snergster/csit-sut-centos:latest

ADD files/sshconfig /root/.ssh/config
ADD files/badkey /root/.ssh/id_rsa
RUN chmod 600 /root/.ssh/id_rsa
RUN mv /usr/bin/sar /usr/bin/sar.old && ln -s /bin/true /usr/bin/sar