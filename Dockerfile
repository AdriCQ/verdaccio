FROM verdaccio/verdaccio:5

USER root

# Instalar plugin S3
RUN npm install -g verdaccio-aws-s3-storage

# Copiar config
COPY config.yaml /verdaccio/conf/config.yaml

# Permisos correctos
RUN chown verdaccio:verdaccio /verdaccio/conf/config.yaml

USER verdaccio
