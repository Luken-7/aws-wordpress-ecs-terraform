terraform {
  backend "s3" {
    key     = "PROD/prod.tfstate"
    bucket  = "terraform-wordpress-ecs"
    region  = "eu-west-1"
  }
}