provider "aws" {
  region = "us-east-1"
}

module "vpc" {
  source = "../modules/terraform-aws-vpc"

  name = "vpc_churrops_us"

  cidr = "10.0.0.0/16"

  azs		  = ["us-east-1a", "us-east-1b", "us-east-1c", "us-east-1d", "us-east-1e", "us-east-1f"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24", "10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
  public_subnets  = ["10.0.101.0/24","10.0.102.0/24","10.0.103.0/24", "10.0.104.0/24", "10.0.105.0/24", "10.0.106.0/24" ]

  enable_nat_gateway = true
  single_nat_gateway = true

  tags = {
    Name	= "churrops_us"
    Managed_by	= "Terraform"
    Owner       = "Rodrigo Floriano de Souza"
    Environment = "dev"
  }
}

/*aws ec2 describe-availability-zones --query 'AvailabilityZones[].{Name:ZoneName}' --output text*/
