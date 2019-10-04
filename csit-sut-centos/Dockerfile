FROM registry.fdiopoc.net/vpp/centos:latest

ADD files/sshconfig /root/.ssh/config
ADD files/badkey /root/.ssh/id_rsa
RUN chmod 600 /root/.ssh/id_rsa
RUN mv /usr/bin/sar /usr/bin/sar.old && ln -s /bin/true /usr/bin/sar
RUN ssh-keygen -t ecdsa -f /etc/ssh/ssh_host_ecdsa -N '' && ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa -N '' && ssh-keygen -t ed25519 -f /etc/ssh/ssh_host_ed25519 -N ''
