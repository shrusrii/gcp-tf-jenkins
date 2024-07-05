provider "google" {
  project     = "bionic-trilogy-428106-h5"
}


resource "google-storage-bucket" "my-bucket"{
name = "sr-githubdemo-bucket"
project = "bionic-trilogy-428106-h5"
location = "US"
forcedestroy = true
public_access_prevention = "enforced"
}
