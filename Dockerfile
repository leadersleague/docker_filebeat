FROM docker.elastic.co/beats/filebeat:6.6.2

COPY entrypoint.sh /usr/share/filebeat/entrypoint.sh
USER root
RUN chmod +x /usr/share/filebeat/entrypoint.sh
RUN chown root:filebeat /usr/share/filebeat/entrypoint.sh

ENTRYPOINT ["/usr/share/filebeat/entrypoint.sh"]

CMD ["-e"]