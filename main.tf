  provider "google" {
     region = "us-central1"
  }

terraform {
  required_providers {
    google= {
      source = "hashicorp/google"
      version = "4.60.0"
    }
  }
}


resource "google-storage-bucket" "my-bucket"{
name = "githubdemo-bucket"
project = "myfirstproject"
location = "US"
forcedestroy = true
public_access_prevention = "enforced"
}
