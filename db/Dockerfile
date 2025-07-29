# MariaDB Alpine custom
FROM alpine:3.20

# Variáveis de ambiente default
ENV MARIADB_ROOT_PASSWORD=root \
    MARIADB_DATABASE=finance \
    MARIADB_USER=finance_user \
    MARIADB_PASSWORD=finance_pass

# Instala mariadb e ferramentas essenciais
RUN apk add --no-cache mariadb mariadb-client bash tzdata \
    && mkdir -p /run/mysqld \
    && chown -R mysql:mysql /run/mysqld /var/lib/mysql

# Inicializa a base de dados
RUN mysql_install_db --user=mysql --datadir=/var/lib/mysql

# Copia script inicial (se existir)
COPY init.sql /docker-entrypoint-initdb.d/init.sql

EXPOSE 3306

USER mysql
CMD ["mysqld", "--bind-address=0.0.0.0"]
