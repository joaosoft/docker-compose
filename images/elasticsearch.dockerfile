FROM docker.elastic.co/elasticsearch/elasticsearch:5.6.3

ADD files/elastic-search.yml /usr/share/elasticsearch/config/

RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install analysis-icu

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["elasticsearch"]
