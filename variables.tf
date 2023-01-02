variable "aws_region" {
  description = "Region"
  type = string
  default = "eu-central-1"
}

variable "instance_name" {
  description = "Name of the instance to be created"
  default = "test_ec2"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "ami_id" {
  description = "The AMI to use"
  default = "ami-0d527b8c289b4af7f"
}

# needs to be list(string)
variable "access_ip" {
  type = string
  default = "91.231.246.50/32"
}

