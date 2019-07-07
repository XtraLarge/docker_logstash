FROM docker.elastic.co/logstash/logstash:7.2.0
#RUN rm -f /usr/share/logstash/pipeline/logstash.conf
#ADD pipeline/ /usr/share/logstash/pipeline/
#ADD config/ /usr/share/logstash/config/

WORKDIR /usr/share/logstash/
RUN bin/logstash-plugin install logstash-filter-age
RUN bin/logstash-plugin install logstash-output-icinga
RUN bin/logstash-plugin install logstash-filter-opnsensefilter
