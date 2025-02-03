# Dockerfile
FROM postgres:14.1-alpine

# Env vars
ENV POSTGRES_DB=db \
    POSTGRES_USER=usr \
    POSTGRES_PASSWORD=pwd

# Copy init db scripts into docker-entrypoint-initdb.d
COPY ./initdb/ /docker-entrypoint-initdb.d/
