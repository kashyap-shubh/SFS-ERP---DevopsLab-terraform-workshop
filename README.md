# 🚀 DevOps Lab Template

> A reusable GitHub Codespaces template for DevOps, Cloud, Platform Engineering and Java/Spring Boot development.

This repository provides a **ready-to-use Linux development environment** using **GitHub Codespaces**. Every time a Codespace is created, it automatically installs and configures the required DevOps tools, so you can start developing immediately without repeating setup steps.

---

# 📖 Project Overview

This template is designed to eliminate repetitive environment setup by providing a standardized development environment.

It is suitable for:

- Java Development
- Spring Boot
- Docker
- Kubernetes
- Terraform
- AWS
- Oracle Cloud (OCI)
- Ansible
- Linux Administration
- DevOps Learning Labs

---

# ✨ Features

- One-click GitHub Codespace setup
- Automated environment provisioning
- Automated tool verification
- Environment diagnostics
- Reusable across multiple repositories
- Consistent development environment
- Ready for cloud-native development

---

# 🏗 Architecture

```text
                GitHub Repository
                        │
                        ▼
          Create GitHub Codespace
                        │
                        ▼
          .devcontainer/devcontainer.json
                        │
                        ▼
        Install Dev Container Features
                        │
                        ▼
             Execute post-create.sh
                        │
                        ▼
          Ready DevOps Environment
                        │
            ┌───────────┴────────────┐
            ▼                        ▼
     verify-tools.sh          doctor.sh
```

---

# 🛠 Installed Tools

| Tool | Purpose |
|------|---------|
| Java (OpenJDK) | Java Development |
| Maven | Java Build Tool |
| Git | Version Control |
| Python | Automation & Scripting |
| AWS CLI | AWS Management |
| OCI CLI | Oracle Cloud Management |
| Docker CLI | Containers |
| kubectl | Kubernetes |
| Helm | Kubernetes Package Manager |
| Terraform | Infrastructure as Code |
| Ansible | Configuration Management |
| jq | JSON Processing |
| yq | YAML Processing |
| GitHub CLI | GitHub Operations |

---

# 📂 Repository Structure

```text
.
├── .devcontainer
│   ├── devcontainer.json
│   ├── post-create.sh
│   ├── verify-tools.sh
│   ├── doctor.sh
│   └── README.md
│
└── README.md
```

---

# ⚙ Setup Process

When a new Codespace is created, GitHub automatically performs the following steps:

1. Creates a Linux container.
2. Reads `.devcontainer/devcontainer.json`.
3. Installs all configured Dev Container Features.
4. Executes `post-create.sh`.
5. Opens a ready-to-use development environment.

No manual installation is required.

---

# 🚀 Creating a Codespace

1. Open this repository.
2. Click **Code**.
3. Select **Codespaces**.
4. Click **Create codespace on main**.
5. Wait for the setup to complete.

Your development environment will be ready automatically.

---

# 📜 Scripts

## post-create.sh

### Purpose

Installs and configures additional tools after the Dev Container is created.

### Runs Automatically

Yes.

---

## verify-tools.sh

### Purpose

Checks whether the required DevOps tools are installed.

### Usage

```bash
./.devcontainer/verify-tools.sh
```

Example:

```text
Java        ✅ Installed
Docker      ✅ Installed
Terraform   ✅ Installed
```

---

## doctor.sh

### Purpose

Performs a complete environment health check.

Checks:

- Operating System
- User Information
- JAVA_HOME
- PATH
- Disk Usage
- Memory
- Git Configuration
- Installed Tool Versions

### Usage

```bash
./.devcontainer/doctor.sh
```

---

# 🔍 Verification

Verify all installed tools:

```bash
./.devcontainer/verify-tools.sh
```

---

# 🩺 Environment Diagnostics

Run a complete environment health check:

```bash
./.devcontainer/doctor.sh
```

---

# 🛠 Updating the Template

After making changes:

```bash
git add .

git commit -m "Describe your changes"

git push
```

---

# 🛣 Learning Roadmap

This template is intended to support learning in the following order:

```text
Java
   │
   ▼
Maven
   │
   ▼
Spring Boot
   │
   ▼
REST APIs
   │
   ▼
Docker
   │
   ▼
Docker Compose
   │
   ▼
Kubernetes
   │
   ▼
Helm
   │
   ▼
Terraform
   │
   ▼
AWS / OCI
   │
   ▼
CI/CD
```

---

# 🚧 Future Roadmap

Planned additions:

- Docker Compose
- Jenkins
- SonarQube
- Nexus Repository
- Argo CD
- Prometheus
- Grafana
- Istio
- Kustomize
- Minikube
- Kind
- Podman
- Trivy
- GitHub Actions
- VS Code Tasks
- Bootstrap Script
- Tool Update Script

---

# 📜 Version History

| Version | Description |
|---------|-------------|
| v1.0 | Initial DevOps Lab Template |

---

# 🤝 Contributing

Suggestions and improvements are welcome.

Feel free to create Issues or Pull Requests.

---

# 📄 License

This project is licensed under the MIT License.

(Add an MIT LICENSE file if you choose to publish it under that license.)

---

# 👨‍💻 Author

**Shubham Kumar**

DevOps Engineer • Cloud • Automation • Platform Engineering

---

# ⭐ If you find this template useful

Consider starring the repository to keep track of future improvements.