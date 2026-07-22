#!/bin/bash

echo "=============================================="
echo "      DevOps Lab - Environment Doctor"
echo "=============================================="

echo
echo "===== System Information ====="

echo "User        : $(whoami)"
echo "Hostname    : $(hostname)"
echo "OS          : $(grep PRETTY_NAME /etc/os-release | cut -d= -f2 | tr -d '"')"
echo "Kernel      : $(uname -r)"
echo "Architecture: $(uname -m)"

echo
echo "===== Environment Variables ====="

echo "JAVA_HOME : ${JAVA_HOME:-Not Set}"
echo "PATH      : $PATH"

echo
echo "===== Disk Usage ====="

df -h /

echo
echo "===== Memory ====="

free -h

echo
echo "===== Git Configuration ====="

echo "User Name : $(git config --global user.name)"
echo "Email     : $(git config --global user.email)"

echo
echo "===== Tool Versions ====="

java -version 2>&1 | head -1
javac -version
mvn -version | head -1
git --version
python3 --version
aws --version
oci --version
terraform version | head -1
docker --version
kubectl version --client
helm version --short
ansible --version | head -1
jq --version
yq --version
gh --version | head -1

echo
echo "=============================================="
echo " Environment Check Complete"
echo "=============================================="