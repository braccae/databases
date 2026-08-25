FROM ghcr.io/braccae/alma:latest

RUN dnf install -y \
    https://download.postgresql.org/pub/repos/yum/reporpms/EL-10-$(uname -m)/pgdg-redhat-repo-latest.noarch.rpm
    # https://download.postgresql.org/pub/repos/yum/reporpms/non-free/EL-10-$(uname -m)/pgdg-redhat-nonfree-repo-latest.noarch.rpm

# RUN dnf search -y postgresql && exit 1

RUN dnf install -y \
    postgresql18-server \
    postgresql18-contrib \
    postgresql18 \
    pgagent_18 \
    pgvector_18 \
    jsquery_18 \
    pguri_18 \
    pgpdf_18 \
    mysql_fdw_18 \
    pgbackrest

