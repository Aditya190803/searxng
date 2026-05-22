FROM searxng/searxng:latest

COPY ./searxng/settings.yml /etc/searxng/settings.yml
RUN secret_key="$(head -c 24 /dev/urandom | base64 | tr -dc 'a-zA-Z0-9')" \
	&& sed -i "s/secret_key: \"ultrasecretkey\"/secret_key: \"${secret_key}\"/" /etc/searxng/settings.yml

ENV SEARXNG_PORT=8080

EXPOSE 8080
