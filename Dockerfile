FROM verdaccio/verdaccio:5

# Instala curl para el health check
USER root
RUN apk add --no-cache curl
USER verdaccio

# Copia la configuración personalizada
COPY ./conf/config.yaml /verdaccio/conf/config.yaml