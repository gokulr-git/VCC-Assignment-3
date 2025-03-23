# VCC-Assignment-3
# Auto-Scaling VM with Monitoring on GCP ☁️

This project demonstrates how to:
- Create a **local VM** using VirtualBox.
- Monitor **CPU & Memory usage** with **Prometheus & Grafana**.
- **Auto-scale** to GCP **(Mumbai region: asia-south1)** when resource usage exceeds 75%.
- Deploy a **Flask-based sample application** on the cloud instance.

---

## **🌟 Features**
✔️ VirtualBox VM with Ubuntu  
✔️ Resource monitoring using Prometheus & Grafana  
✔️ Terraform-based GCP Auto-scaling setup  
✔️ Dockerized Flask app deployment  

---

## **📂 Folder Structure**
| Folder | Description |
|--------|-------------|
| `terraform/` | Terraform configuration for GCP Auto-scaling |
| `monitoring/` | Prometheus & Grafana setup files |
| `app/` | Sample Flask application with Docker support |
| `architecture/` | Architecture diagram |

---

## **🚀 How to Run**
### **Step 1: Deploy Local VM**
1. Install **VirtualBox** and create an Ubuntu VM.
2. Assign a static **IP (e.g., 192.168.56.101)**.
3. Enable **SSH access** to the VM.

### **Step 2: Setup Monitoring (Prometheus & Grafana)**
```bash
cd monitoring
bash start_monitoring.sh

	•	Prometheus: http://localhost:9090
	•	Grafana: http://localhost:3000

### **Step 3: Deploy GCP Auto-Scaling**

cd terraform
terraform init
terraform apply


	•	Creates an auto-scaling instance in Mumbai (asia-south1-a)
	•	Deploys the Flask app automatically


### **Step 4: Test Flask App**

curl http://<GCP_INSTANCE_PUBLIC_IP>:5000
