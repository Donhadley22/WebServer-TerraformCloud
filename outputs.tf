output "ec2_instance_id" {
  value = module.ec2.instance_id
}

output "ec2_public_ip" {
  value = module.ec2.public_ip
}

output "vpc_id" {
  value = module.vpc.vpc_id
}

output "ec2_public_dns" {
  value = module.ec2.public_dns
}

output "ec2_instance_state" {
  value = module.ec2.instance_state
}

