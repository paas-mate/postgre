FROM ttbb/base:centos

ENV POSTGRE_HOME /opt/sh/postgre

RUN dnf install -y https://download.postgresql.org/pub/repos/yum/reporpms/EL-8-x86_64/pgdg-redhat-repo-latest.noarch.rpm && \
dnf -qy --nogpgcheck module disable postgresql && \
dnf install -y --nogpgcheck postgresql13-server && \
dnf clean all && \
mkdir /opt/sh/postgre && \
chown -R sh:sh /opt/sh && \
chown -R sh:sh /usr/pgsql-13 && \
chown -R sh:sh /var/run/postgresql


WORKDIR /opt/sh/postgre
USER sh
