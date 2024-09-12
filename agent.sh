#!/bin/bash

TERRAFORM_VERSION="1.5.6"  # Replace with your desired Terraform version
TERRAFORM_ZIP="terraform_${TERRAFORM_VERSION}_linux_amd64.zip"
TERRAFORM_URL="https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/${TERRAFORM_ZIP}"
INSTALL_PATH="/usr/local/bin"

# Download Terraform
curl -O $TERRAFORM_URL

# Install Terraform
unzip $TERRAFORM_ZIP
sudo mv terraform $INSTALL_PATH

# Verify installation
terraform version

