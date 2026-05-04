FROM ghcr.io/braccae/alma:latest AS base

RUN dnf install -y \
    mariadb \
    mariadb-server \
    mariadb-backup 
    

FROM base AS final