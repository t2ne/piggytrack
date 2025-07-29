# Base super leve
FROM alpine:3.22

# Variáveis de ambiente
ENV MARIADB_ROOT_PASSWORD=root \
    MARIADB_DATABASE=finance \
    MARIADB_USER=finance_user \
    MARIADB_PASSWORD=finance_pass

# Instala MariaDB, cliente e dependências mínimas
RUN apk add --no-cache mariadb mariadb-client bash tzdata \
    && mkdir -p /run/mysqld /docker-entrypoint-initdb.d \
    && chown -R mysql:mysql /run/mysqld /var/lib/mysql

# Inicializa o diretório da base de dados
RUN mysql_install_db --user=mysql --datadir=/var/lib/mysql

# Copia script inicial (opcional)
COPY init.sql /docker-entrypoint-initdb.d/init.sql

# Define utilizador
USER mysql

# Expõe a porta
EXPOSE 3306

# Comando principal
CMD ["mysqld", "--bind-address=0.0.0.0", "--skip-networking=0"]
