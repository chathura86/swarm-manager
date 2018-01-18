FROM jenkins

USER root

RUN apt-get update && apt-get install -y nfs-common sudo nfs-client

RUN mkdir /efs

RUN usermod -aG sudo jenkins

RUN echo "" >> /etc/sudoers
RUN echo "# " >> /etc/sudoers
RUN echo "jenkins ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

USER jenkins
