# VIA(Vulnerable Inventory Management App)-Project-DevSecOps
This project implements a robust DevSecOps pipeline for a Python Flask-based web application, integrating modern security tools and CI/CD best practices. The main goal is to automate security scanning at every phase of the development lifecycle — ensuring code quality, infrastructure compliance, and container image safety — all before deployment.


Here’s a well-rounded **project description** for your DevSecOps pipeline project that you can include in documentation, GitHub/GitLab README, reports, or even portfolios:

---

## DevSecOps Pipeline for a Python Flask Application

**Project Description**

This project implements a robust **DevSecOps pipeline** for a Python Flask-based web application, integrating modern security tools and CI/CD best practices. The main goal is to automate security scanning at every phase of the development lifecycle — ensuring code quality, infrastructure compliance, and container image safety — all before deployment.

The project uses **GitLab CI/CD** as the orchestration engine while leveraging code stored in **GitHub**. It performs static code analysis (SAST), software composition analysis (SCA), container vulnerability scanning, and Infrastructure-as-Code (IaC) validation using the following tools:

---

**Tech Stack & Tools**

| Category                    | Tools Used                     |
| --------------------------- | ------------------------------ |
| Language/Framework          | Python, Flask                  |
| Version Control             | GitHub                         |
| CI/CD Engine                | GitLab CI/CD                   |
| Static Code Analysis (SAST) | SonarCloud                     |
| Dependency Scanning (SCA)   | Snyk                           |
| Container Security          | Trivy                          |
| Containerization            | Docker                         |

---

**Key Features**

* **Automated CI/CD pipeline** using GitLab CI
* **Static Application Security Testing** via SonarCloud
* **Software Composition Analysis** with Snyk (requirements.txt, Docker)
* **Container Image Vulnerability Scanning** using Trivy
* **Infrastructure-as-Code Analysis** using Checkov on Terraform and Dockerfiles
* **Environment-specific configuration** via GitLab CI/CD variables
* Secure token management for SonarCloud, Snyk, and GitHub API
* Optional daily scheduled scans to catch new vulnerabilities

---

**Pipeline Workflow Overview**

1. **Build** the Flask application and set up environment
2. **Run SAST** with SonarCloud to detect insecure coding patterns
3. **Run SCA** using Snyk to detect vulnerable dependencies
4. **Container Scan** using Trivy to scan the built Docker image
5. **Publish reports** (optional) to dashboards or notify via email/slack

---

**Objective**

To integrate security at every stage of the software delivery pipeline — ensuring early detection of vulnerabilities, reducing remediation time, and establishing a security-first development culture.

