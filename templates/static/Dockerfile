FROM reg.zintow.com/infrastructure/baseconsul

COPY public /data/public
COPY <serviceName>.json /etc/consul.d/<serviceName>.json

COPY run.sh /etc/service/<serviceName>/start
COPY boot.sh /etc/service/<serviceName>/run

CMD ["/sbin/boot"]
