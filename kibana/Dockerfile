FROM kibana:7.16.2
ENV PASS='kibana123'
COPY kibana.yml /etc/kibana/
RUN ./bin/kibana-keystore create
RUN ./bin/kibana-keystore add $PASS
EXPOSE 5601