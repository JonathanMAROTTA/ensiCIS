FROM postgres:17

COPY initial_state.sql /docker-entrypoint-initdb.d

RUN mkdir -p /conf_files
COPY conf_files /conf_files

# Set correct permissions
RUN chown -R postgres:postgres /conf_files
RUN chmod 600 -R /conf_files/*.key
RUN chmod 777 /conf_files/*.conf

CMD ["postgres", \ 
     "-c", "config_file=/conf_files/postgresql.conf", \
     "-c", "hba_file=/conf_files/pg_hba.conf"]
