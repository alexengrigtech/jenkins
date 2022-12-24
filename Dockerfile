FROM jenkins/jenkins:latest

ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false
ENV CASC_JENKINS_CONFIG /var/jenkins_home/casc.yml

COPY casc.yml           /var/jenkins_home/casc.yml
COPY seedJob.groovy     /var/jenkins_home/seedJob.groovy
COPY plugins.txt        /usr/share/jenkins/ref/plugins.txt

RUN jenkins-plugin-cli --clean-download-directory --list --view-security-warnings \
                       -f /usr/share/jenkins/ref/plugins.txt
