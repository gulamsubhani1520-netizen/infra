output "public_ip" {
  value = aws_instance.nginx_ec2.public_ip
}

output "public_dns" {
  value = aws_instance.nginx_ec2.public_dns
}

output "instance_id" {
  value = aws_instance.nginx_ec2.id
}

output "selected_ami_id" {
  description = "The AMI ID actually used for the EC2 instance (custom if provided, otherwise Ubuntu)."
  value       = var.custom_ami_id != "" ? var.custom_ami_id : data.aws_ami.ubuntu_2204.id
}

output "is_custom_ami" {
  description = "True if a custom AMI was provided, false if using the default Ubuntu AMI."
  value       = var.custom_ami_id != ""
}

output "instance_ami_id" {
  description = "The AMI ID attached to the created EC2 instance."
  value       = aws_instance.nginx_ec2.ami
}