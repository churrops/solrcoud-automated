provider "aws" {
  region = "us-east-1"
}

module "zookeeper-cluster" {
  source = "../terraform/terraform-ec2-instance/"

  name  = "zookeeper-cluster"
  count = 3

  ami                    = "ami-ebd02392"
  instance_type          = "m3.medium"
  key_name               = "rodrigofloriano-keyus"
  monitoring             = true
#  vpc_security_group_ids = ["sg-12345678"]
#  subnet_id              = "${element(data.aws_subnet_ids.all.ids, 0)}"


  tags = {
    Name	= "Zookeeper Cluster"
    Terraform 	= "true"
    Environment = "dev"
  }
}

module "solrcloud-cluster" {
  source = "../terraform/terraform-ec2-instance/"

  name  = "solrcloud-cluster"
  count = 2
  
  ami                    = "ami-ebd02392"
  instance_type          = "m5.xlarge"
  key_name               = "rodrigofloriano-keyus"
  monitoring             = true
#  vpc_security_group_ids = ["sg-12345678"]
#  subnet_id              = "${element(data.aws_subnet_ids.all.ids, 0)}"

  tags = {
    Name	= "SolrCloud Cluster"
    Terraform 	= "true"
    Environment = "dev"
  }
}
