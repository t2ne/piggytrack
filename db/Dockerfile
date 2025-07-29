FROM yobasystems/alpine-mariadb:11.4.5

ENV MARIADB_ROOT_PASSWORD=root \
    MARIADB_DATABASE=finance \
    MARIADB_USER=finance_user \
    MARIADB_PASSWORD=finance_pass

# Copia o script inicial (se existir)
COPY init.sql /docker-entrypoint-initdb.d/init.sql

EXPOSE 3306

CMD ["mariadbd", "--bind-address=0.0.0.0"]
