FROM verdaccio/verdaccio

# Documenta el puerto usado por la app
EXPOSE 4873

# Instala curl para el health check
USER root
RUN apk add --no-cache curl
USER verdaccio

# Copia la configuración
COPY ./conf/config.yaml /verdaccio/conf/config.yaml