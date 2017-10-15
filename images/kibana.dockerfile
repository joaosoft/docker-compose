FROM docker.elastic.co/kibana/kibana:5.6.2

ADD ./config/kibana.yml /usr/share/kibana/config/

USER root
RUN chown kibana:kibana config/kibana.yml

USER kibana