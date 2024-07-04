provider "google" {
  region = "us-east1"
}

resource "google-storage-bucket" "my-bucket"{
name = "githubdemo-bucket"
project = "myfirstproject"
location = "us"
forcedestroy = true
public_access_prevention = "enforced"
}
