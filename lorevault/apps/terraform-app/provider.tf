terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "~> 4.0"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = "~> 4.0"
    }
  }

  required_version = ">= 1.0"
}

provider "google" {
  project = var.project_id
  region = var.region
  credentials = file(var.credentials_file)
}

provider "google-beta" {
  project = var.project_id
  region  = var.region
}
