provider "aws" {
  region = "us-west-2"
}

data "aws_ami" "ubuntu" {
  count       = var.use_localstack ? 0 : 1
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server-*"]
  }

  owners = ["099720109477"]
}

locals {
  selected_ami_id = var.use_localstack ? var.localstack_ami_id : data.aws_ami.ubuntu[0].id
}

resource "aws_instance" "app_server" {
  ami           = local.selected_ami_id
  instance_type = "t2.micro"

  tags = {
    Name = "learn-terraform"
  }
}
