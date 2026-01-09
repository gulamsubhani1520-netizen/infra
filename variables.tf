variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "project_name" {
  type    = string
  default = "subhani-mahmood-ec2-instance"
}

variable "instance_type" {
  type    = string
  default = "t2.large"
}

variable "key_pair_name" {
  type        = string
  description = "AbdulDevopsDemoKVP"
}

variable "ssh_cidr" {
  type        = string
  description = "0.0.0.0/0"
}

variable "vpc_cidr" {
  type    = string
  default = "10.10.0.0/16"
}

variable "public_subnet_cidr" {
  type    = string
  default = "10.10.1.0/24"
}

variable "custom_ami_id" {
  type        = string
  description = "If set, use this AMI instead of the default Ubuntu AMI"
  default     = ""
}

variable "github_deploy_pubkey" {
  type        = string
  description = "Public SSH key for GitHub Actions deploy"
  default     = ""
}
