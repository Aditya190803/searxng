FROM searxng/searxng:latest

COPY ./searxng/settings.yml /etc/searxng/settings.yml

ENV SEARXNG_PORT=8080

EXPOSE 8080
