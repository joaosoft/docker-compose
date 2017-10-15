FROM docker.elastic.co/logstash/logstash:5.6.3

ADD ./config/logstash/logstash.yml /usr/share/logstash/config/
ADD ./config/logstash/logstash.conf /usr/share/logstash/pipeline/
