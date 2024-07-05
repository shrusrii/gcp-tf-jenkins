resource "google_storage_bucket" "my-bucket"{
name = "srw-githubdemo-bucket"
project = "bionic-trilogy-428106-h5"
location = "US"
force_destroy = true
public_access_prevention = "enforced"
}
