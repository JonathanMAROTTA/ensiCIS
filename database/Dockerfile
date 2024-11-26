FROM postgres:17

# Update the package list and install prerequisites
RUN apt-get update && apt-get install -y \
    curl \
    unzip \
    groff \
    less \
    cron

# Download and install the AWS CLI v2
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" \
    && unzip awscliv2.zip \
    && ./aws/install \
    && rm -rf awscliv2.zip aws
RUN mkdir -p ~/.aws

# Setup crontab to backup the database
COPY backupDatabase.sh /var/lib/postgresql/
RUN echo "0 3 * * * /var/lib/postgresql/backupDatabase.sh" > /etc/cron.d/backup-database
RUN chmod 0644 /etc/cron.d/backup-database
RUN crontab /etc/cron.d/backup-database

# Copy initial juiceshop database
COPY initial_state.sql /docker-entrypoint-initdb.d

# Set postgres config files
RUN mkdir -p /conf_files
COPY conf_files /conf_files
RUN chown -R postgres:postgres /conf_files
RUN chmod 600 -R /conf_files/*.key
RUN chmod 777 /conf_files/*.conf

CMD ["postgres", \ 
     "-c", "config_file=/conf_files/postgresql.conf", \
     "-c", "hba_file=/conf_files/pg_hba.conf"]
