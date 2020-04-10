FROM nginx:1.17.9

RUN apt-get update && apt-get install -y spawn-fcgi fcgiwrap \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

EXPOSE 80

STOPSIGNAL SIGTERM

COPY docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]
