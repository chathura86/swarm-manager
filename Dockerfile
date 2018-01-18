FROM jenkins/jenkins:lts

USER root

RUN apt-get update && apt-get install -y nfs-common

RUN mkdir /efs

RUN usermod -aG sudo jenkins

RUN echo "" >> /etc/sudoers
RUN echo "# " >> /etc/sudoers
RUN echo "jenkins ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

USER jenkins
