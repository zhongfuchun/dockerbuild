FROM reg.zintow.com/infrastructure/basejava

COPY *.jar /opt/jars/target.jar
COPY <serviceName>.json /etc/consul.d/<serviceName>.json

COPY run.sh /etc/service/<serviceName>/run

CMD ["/sbin/boot"]
