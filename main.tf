data "aws_ami" "app_ami" {
  most_recent = true

  filter {
    name   = "name"
    values = ["bitnami-tomcat-*-x86_64-hvm-ebs-nami"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["979382823631"] # Bitnami
}

data "aws_vpc" "default" {
  default = true
}

resource "aws_instance" "blog" {
  ami           = data.aws_ami.app_ami.id
  instance_type = var.instance_type

  vpc_security_group_ids = [module.blog_sec_g.security_group_id]

  tags = {
    Name = "HelloWorld"
  }
}

variable "AWS_SECRET_ACCESS_KEY"{
    type = string
    description = "aws key"
}

module "blog_sec_g" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "5.1.0"
  name    = "blog_new"

  vpc_id      = data.aws_vpc.default.id
  
  ingress_rules = ["http-80-tcp","https-443-tcp"]
  ingress_cidr_blocks = ["0.0.0.0/0"]

  egress_rules = ["all-all"]
  egress_cidr_blocks = ["0.0.0.0/0"]
}