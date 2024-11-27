# Build using 
## docker build -t gitlab.ensimag.fr:5050/marottaj/3a_projet_cis .
# Push using
## docker push gitlab.ensimag.fr:5050/marottaj/3a_projet_cis

# Dockerfile
FROM ubuntu:22.04

# Set environment variable to prevent interactive timezone configuration
ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Etc/UTC

# Set Terraform version as a build argument
ARG TERRAFORM_VERSION="1.5.3"

# Install required system packages
RUN apt-get update && apt-get install -y \
    curl \
    unzip \
    python3 \
    python3-pip \
    software-properties-common \
    gpg \
    coreutils \
    && apt-get clean

# Install Terraform
RUN curl -LO "https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip" \
    && unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip -d /usr/local/bin/ \
    && rm terraform_${TERRAFORM_VERSION}_linux_amd64.zip

# Install Ansible
RUN apt-add-repository --yes --update ppa:ansible/ansible \
    && apt-get install -y ansible

# Install AWS CLI using pip
RUN pip3 install awscli --upgrade

# Add Python dependencies for Kubernetes
RUN pip3 install kubernetes

# Install hcp (HashiCorp Vault Cli)
RUN curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
RUN echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
RUN apt update && apt install hcp -y

# Verify installations
RUN terraform --version && ansible --version && aws --version

# Clean up
RUN rm -rf /var/lib/apt/lists/*
