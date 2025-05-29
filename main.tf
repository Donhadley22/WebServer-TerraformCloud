# Terraform configuration file for AWS infrastructure setup

provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source              = "./modules/vpc"
  vpc_cidr            = var.vpc_cidr
  vpc_name            = var.vpc_name
  public_subnet_cidrs = var.public_subnet_cidrs
  availability_zones  = var.availability_zones
}

module "security-group" {
  source  = "./modules/security_group"
  vpc_id  = module.vpc.vpc_id
  sg_name = var.sg_name
}

module "ec2" {
  source            = "./modules/ec2"
  ami_id            = var.ami_id
  instance_type     = var.instance_type
  subnet_id         = module.vpc.public_subnet_ids[0]
  security_group_id = module.security_group.security_group_id
  key_name          = var.key_name
  instance_name     = var.instance_name
}
