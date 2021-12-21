FROM elasticsearch:7.16.2
COPY elasticsearch.yml /usr/share/elasticsearch/config/
COPY target/releases/elasticsearch-analysis-metaphone_ptBR-7.16.2.zip .
RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install analysis-phonetic
RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install -v file:./elasticsearch-analysis-metaphone_ptBR-7.16.2.zip