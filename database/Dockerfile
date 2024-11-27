FROM postgres:17

# Update the package list and install prerequisites
RUN apt-get update && apt-get install -y \
    curl \
    unzip \
    groff \
    less \
    cron \
    gpg \
    coreutils

# Download and install the AWS CLI v2
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" \
    && unzip awscliv2.zip \
    && ./aws/install \
    && rm -rf awscliv2.zip aws
RUN mkdir -p ~/.aws

# Install hcp (HashiCorp Vault Cli)
RUN curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
RUN echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
RUN apt update && apt install hcp -y

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
