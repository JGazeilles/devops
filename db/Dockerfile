# Dockerfile
FROM postgres:14.1-alpine

# Copy init db scripts into docker-entrypoint-initdb.d
COPY ./initdb/ /docker-entrypoint-initdb.d/
