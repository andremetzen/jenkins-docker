FROM jenkins/jenkins

USER root

VOLUME ["/var/log/jenkins",  "/var/jenkins_home"]

RUN apt-get update \
    && apt-get install -y sudo curl

RUN curl -L https://github.com/docker/compose/releases/download/1.16.1/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
RUN rm -rf /var/lib/apt/lists/*

RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers

COPY plugins.txt /tmp/plugins.txt

RUN /usr/local/bin/install-plugins.sh $(cat /tmp/plugins.txt)

