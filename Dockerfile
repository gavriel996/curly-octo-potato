FROM jenkins/jenkins:2.375.1-lts-alpine
USER root
RUN apk add --no-cache python3 py3-pip
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false
ENV CASC_JENKINS_CONFIG /var/jenkins_home/casc.yaml
COPY --chown=jenkins:jenkins plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN jenkins-plugin-cli -f /usr/share/jenkins/ref/plugins.txt
COPY --chown=jenkins:jenkins casc.yaml /var/jenkins_home/casc.yaml
COPY --chown=jenkins:jenkins jobs /var/jenkins_home/jobs


