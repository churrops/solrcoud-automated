terraform {
  backend "s3" {
    bucket  = "churrops-terraform-state"
    encrypt = "true"
    key     = "vpc/vpc_churrops_us.tfstate"
    region  = "us-east-1"
  }
}
