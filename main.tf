terraform {
  required_version = "~> 1.2"
  required_providers {
    google = {
      version = "~> 4.0.0"
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
