---

## **📂 `terraform/` (GCP Auto-Scaling)**
### **📜 `terraform_config.tf`**
```hcl
provider "google" {
  project = "your-gcp-project-id"
  region  = "asia-south1"
}

resource "google_compute_instance" "auto_scale_vm" {
  name         = "auto-scale-instance"
  machine_type = "e2-medium"
  zone         = "asia-south1-a"

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2004-lts"
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }

  metadata_startup_script = file("instance_setup.sh")
}
