terraform {
  backend "s3" {
    bucket = "my-terraformproject-bucket"
    key    = "project/backend"
    region = "us-east-1"
  }
}