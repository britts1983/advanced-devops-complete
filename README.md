# Advanced DevOps Project (Live Assessment Ready)

This project simulates a real-world DevOps environment with:
- Infrastructure provisioning using **Terraform**
- Configuration management using **Ansible**
- Kubernetes deployment using **YAML**
- CI/CD pipeline using **GitHub Actions**

---

## 🔧 Project Structure


---

## 🚀 How to Run Locally

### Terraform (Format Check)
```bash
cd terraform
terraform fmt -check

cd ansible
ansible-playbook -i inventory.ini playbook.yml --syntax-check

cd k8s
yamllint .
kubeval *.yaml

# Trigger
