FROM docker.elastic.co/logstash/logstash:6.4.0
#RUN rm -f /usr/share/logstash/pipeline/logstash.conf
#ADD pipeline/ /usr/share/logstash/pipeline/
#ADD config/ /usr/share/logstash/config/

WORKDIR /usr/share/logstash/
RUN gosu logstash bin/logstash-plugin install logstash-filter-age
RUN gosu logstash bin/logstash-plugin install logstash-output-icinga
RUN gosu logstash bin/logstash-plugin install logstash-filter-opnsensefilter
