FROM jenkins/jenkins:lts

COPY installer.properties setup.sh /tmp/

USER root
RUN curl -fsSL http://cdn.microfocus.com/cached/legacymf/Products/accurev/accurev7.3/accurev-7.3-linux-x86-x64-clientonly.bin -o ./accurev-client.bin && \
  chmod +x ./accurev-client.bin
RUN ./accurev-client.bin -i silent -f ./tmp/installer.properties

USER jenkins
