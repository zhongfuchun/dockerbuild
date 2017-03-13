FROM reg.zintow.com/infrastructure/basepython

COPY *.py /workspace/
COPY *.txt /workspace/

RUN pip install -r /workspace/requirements.txt

COPY <serviceName>.json /etc/consul.d/<serviceName>.json

COPY run.sh /etc/service/<serviceName>/run

CMD ["/sbin/boot"]
