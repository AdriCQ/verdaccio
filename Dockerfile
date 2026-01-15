FROM verdaccio/verdaccio

# Documenta el puerto usado por la app
EXPOSE 4873

# Instala curl para el health check
USER root
RUN apk add --no-cache curl
RUN apk add --no-cache nano
USER verdaccio