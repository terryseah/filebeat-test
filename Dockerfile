FROM centos:7

RUN yum install -y gcc make
RUN mkdir -p /app/usr/filebeat/
ADD filebeat-7.6.0-linux-x86_64.tar.gz /app/usr/filebeat
ADD filebeat.yml /app/usr/filebeat/filebeat-7.6.0-linux-x86_64/filebeat.yml
RUN chmod -R 777 /app/usr/filebeat/filebeat-7.6.0-linux-x86_64
RUN chmod go-w /app/usr/filebeat/filebeat-7.6.0-linux-x86_64/filebeat.yml

ADD redis-5.0.7.tar.gz /redis
RUN cd /redis/redis-5.0.7 && make && make install prefix=/usr/local/bin

ADD run.sh /
RUN chmod ugo+x /run.sh

CMD /run.sh