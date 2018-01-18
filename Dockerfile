FROM jenkins/jenkins:lts

USER root

RUN apt-get update && apt-get install -y nfs-common

RUN mkdir /efs

USER jenkins
