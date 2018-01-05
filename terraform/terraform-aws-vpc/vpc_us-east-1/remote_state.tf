terraform {
  backend "s3" {
    bucket  = "smtx-infra-terraform-state"
    encrypt = "true"
    key     = "vpc/vpc_smtx_infra_us.tfstate"
    region  = "us-east-1"
  }
}
