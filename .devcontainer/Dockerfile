FROM postgres:alpine

COPY --chown=postgres:postgres --chmod=0600 server.key /var/lib/postgresql/server.key
COPY --chown=postgres:postgres server.crt /var/lib/postgresql/server.crt