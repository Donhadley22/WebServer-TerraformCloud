output "ec2_instance_id" {
  value = module.ec2.instance_id
}

output "ec2_public_ip" {
  value = module.ec2.public_ip
}


output "ec2_public_dns" {
  value = module.ec2.public_dns
}

output "ec2_instance_state" {
  value = module.ec2.instance_state
}

output "ec2_instance_tags" {
  value = module.ec2.instance_tags
}

output "ec2_instance_password_data" {
  value = module.ec2.password_data
}

output "vpc_id" {
  value = module.vpc.vpc_id
}