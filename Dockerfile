FROM perl

COPY accurev-7.3-linux-x64-clientonly.bin installer.properties /tmp/

RUN chmod +x /tmp/accurev-7.3-linux-x64-clientonly.bin
#RUN chmod +x /tmp/setup.sh
#RUN /tmp/accurev-7.3-linux-x64-clientonly.bin -i silent -f installer.properties
# For debug purposes
CMD ["tail", "-f", "/dev/null"]
