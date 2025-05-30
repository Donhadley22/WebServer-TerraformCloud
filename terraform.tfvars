# AWS Configuration
aws_region = "us-east-1"

# VPC Configuration
vpc_cidr            = "10.0.0.0/16"
vpc_name            = "my-vpc"
public_subnet_cidrs = ["10.0.1.0/24", "10.0.2.0/24"]
availability_zones  = ["us-east-1a", "us-east-1b"]

# Security Group
sg_name = "web-sg"

# EC2 Instance Configuration
ami_id        = "ami-0953476d60561c955" # Amazon Linux 2 AMI in us-east-1
instance_type = "t2.micro"
key_name      = "Caleb-key" # Replace with your actual key pair name
instance_name = "web-server"
