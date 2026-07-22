#!/bin/bash
set -e

echo "=========================================="
echo "Updating packages..."
echo "=========================================="

sudo apt-get update

echo "=========================================="
echo "Installing Maven..."
echo "=========================================="

sudo apt-get install -y maven

echo "=========================================="
echo "Installing Ansible..."
echo "=========================================="

sudo apt-get install -y ansible

echo "=========================================="
echo "Installing Linux utilities..."
echo "=========================================="

sudo apt-get install -y \
    jq \
    tree \
    zip \
    unzip \
    curl \
    wget \
    vim \
    nano \
    git-lfs

echo "=========================================="
echo "Installing yq..."
echo "=========================================="

sudo wget -q https://github.com/mikefarah/yq/releases/latest/download/yq_linux_amd64 \
    -O /usr/local/bin/yq

sudo chmod +x /usr/local/bin/yq

echo "=========================================="
echo "Installing OCI CLI..."
echo "=========================================="

python3 -m pip install --upgrade pip
python3 -m pip install --no-cache-dir oci-cli

echo "=========================================="
echo "Configuring Git LFS..."
echo "=========================================="

git lfs install --skip-repo

echo "=========================================="
echo "DevOps Lab setup completed successfully!"
echo "=========================================="

echo ""
echo "Installed Versions:"
echo "-------------------"

java -version
echo

mvn -version
echo

aws --version
echo

terraform version
echo

kubectl version --client
echo

helm version
echo

docker --version
echo

python3 --version
echo

ansible --version
echo

jq --version
echo

yq --version
echo

oci --version
echo

git lfs version