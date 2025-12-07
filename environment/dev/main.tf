module "bucket" {
  source   = "../../modules/bucket"
  name     = "chandan_poc-dev-bucket"
  location = var.region
}

module "vpc" {
  source     = "../../modules/vpc"
  name       = "poc-dev-vpc"
  region     = var.region
  cidr_range = "10.10.0.0/16"
}

module "apis" {
  source     = "../../modules/project_services"
  project_id = var.project_id

  enable_apis = [
    "cloudresourcemanager.googleapis.com",
    "iam.googleapis.com",
    "compute.googleapis.com",
    "container.googleapis.com",
    "cloudbuild.googleapis.com",
    "storage.googleapis.com",
    "sqladmin.googleapis.com",
    "run.googleapis.com",
    "artifactregistry.googleapis.com",
    "servicenetworking.googleapis.com",
  ]
}

