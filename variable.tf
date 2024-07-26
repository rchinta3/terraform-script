variable "project_id" {
  description = "The GCP project ID"
  type        = string
  default = "abcdef-1sdf"
}

variable "region" {
  description = "The GCP region"
  type        = string
  default     = "us-central1"
}

variable "zone" {
  description = "The GCP zone"
  type        = string
  default     = "us-central1-a"
}

variable "google_credentials" {
  description = "gcp"
  type        = string
  default     = "C:/Users/HP/Desktop/GCP/Terraform/abcdef-1sdf-39d2f92cc6a3.json"
}



