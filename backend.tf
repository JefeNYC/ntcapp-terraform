terraform {
  backend "s3" {
    bucket       = "wk10-ntc-app-bucket"
    key          = "week10/terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = false
  }
}