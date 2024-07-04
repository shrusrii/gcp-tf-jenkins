  provider {
region      = "us-central1"
  }



resource "google-storage-bucket" "my-bucket"{
name = "githubdemo-bucket"
project = "myfirstproject"
location = "US"
forcedestroy = true
public_access_prevention = "enforced"
}
