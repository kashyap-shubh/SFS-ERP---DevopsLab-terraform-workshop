#!/bin/bash

echo "==========================================="
echo " DevOps Lab - Tool Verification"
echo "==========================================="
echo

check_tool() {
    TOOL="$1"
    COMMAND="$2"

    printf "%-15s : " "$TOOL"

    if command -v "$COMMAND" >/dev/null 2>&1; then
        echo "✅ Installed"
    else
        echo "❌ Missing"
    fi
}

check_tool "Java" java
check_tool "Javac" javac
check_tool "Maven" mvn
check_tool "Git" git
check_tool "Python" python3
check_tool "AWS CLI" aws
check_tool "OCI CLI" oci
check_tool "Terraform" terraform
check_tool "Docker" docker
check_tool "kubectl" kubectl
check_tool "Helm" helm
check_tool "Ansible" ansible
check_tool "jq" jq
check_tool "yq" yq
check_tool "GitHub CLI" gh

echo
echo "Verification Complete."