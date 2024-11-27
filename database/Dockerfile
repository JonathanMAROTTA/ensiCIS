FROM postgres:17

# Update the package list and install prerequisites
RUN apt-get update && apt-get install -y \
    curl \
    unzip \
    groff \
    less \
    cron \
    gnupg \
    gpg \
    coreutils

# Download and install the AWS CLI v2
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" \
    && unzip awscliv2.zip \
    && ./aws/install \
    && rm -rf awscliv2.zip aws
RUN mkdir -p ~/.aws

# Add HashiCorp GPG key and repository using Debian's codename (hardcoded for this example)
RUN curl -fsSL https://apt.releases.hashicorp.com/gpg | gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg && \
    echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com bullseye main" > /etc/apt/sources.list.d/hashicorp.list

# Update and install HCP
RUN apt-get update && apt-get install -y hcp && \
    rm -rf /var/lib/apt/lists/*

# Setup crontab to backup the database
COPY backupDatabase.sh /var/lib/postgresql/
# Make a backup every 30 minutes
RUN echo "*/30 * * * * /var/lib/postgresql/backupDatabase.sh" > /etc/cron.d/backup-database
RUN chmod 0644 /etc/cron.d/backup-database
RUN crontab /etc/cron.d/backup-database

# Copy initial juiceshop database
COPY initial_state.sql /docker-entrypoint-initdb.d

# Login to HashiCorp Vault
ARG HCP_CLIENT_ID_ARG
ARG HCP_CLIENT_SECRET_ARG
ENV HCP_CLIENT_ID $HCP_CLIENT_ID_ARG
ENV HCP_CLIENT_SECRET $HCP_CLIENT_SECRET_ARG
RUN hcp auth login --client-id=$HCP_CLIENT_ID --client-secret=$HCP_CLIENT_SECRET
RUN hcp profile set vault-secrets/app sample-app

# Set postgres config files
RUN mkdir -p /conf_files
COPY conf_files /conf_files
RUN hcp vault-secrets run -- /bin/bash -c 'echo $ROOT_CRT_ENCODED | base64 --decode > root.crt && \
    echo $SERVER_CRT_ENCODED | base64 --decode > server.crt && \
    echo $SERVER_KEY_ENCODED | base64 --decode > server.key'

RUN chown -R postgres:postgres /conf_files
RUN chmod 600 -R /conf_files/*.key
RUN chmod 777 /conf_files/*.conf

CMD ["postgres", \ 
     "-c", "config_file=/conf_files/postgresql.conf", \
     "-c", "hba_file=/conf_files/pg_hba.conf"]
