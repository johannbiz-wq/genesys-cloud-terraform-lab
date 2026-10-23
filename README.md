# Genesys Cloud Infrastructure with Terraform 🚀

This project demonstrates Infrastructure as Code (IaC) best practices for provisioning Contact Center resources in **Genesys Cloud** using **Terraform**.

## 📌 Architecture & Provisioned Resources
* **`genesyscloud_auth_division`**: Logic isolation for access control and security management (`Division-Soporte-DevOps`).
* **`genesyscloud_routing_queue`**: Automated VIP Customer Service Queue with strict Wrap-up Prompt policies (`MANDATORY`, 30s timeout).

## 🛠️ Tech Stack & Tools
* **IaC Engine**: Terraform >= 1.0.0
* **Provider**: Genesys Cloud (`mypurecloud/genesyscloud`)
* **Environment**: Windows / VS Code / PowerShell

## 🚀 Quickstart
1. Clone this repository:
   ```bash
   git clone [https://github.com/johannbiz-wq/genesys-cloud-terraform-lab.git](https://github.com/johannbiz-wq/genesys-cloud-terraform-lab.git)