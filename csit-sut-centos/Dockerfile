FROM snergster/csit-sut-centos:latest

ADD files/sshconfig /root/.ssh/config
ADD files/badkey /root/.ssh/id_rsa
RUN chmod 600 /root/.ssh/id_rsa
RUN mkdir -p /var/log/sysstat && chmod 777 /var/log/sysstat