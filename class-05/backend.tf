terraform {
  backend "s3" {
    bucket = "terraform-state-xpto"
    key    = "terraform/class-05"
  }
}
