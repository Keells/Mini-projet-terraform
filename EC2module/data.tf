data "aws_ami" "app_ami" {
  most_recent = true
  owners      = ["099720109477"]

  filter {
    name   = "name"
    values = ["ubuntu-minimal/images/hvm-ssd/ubuntu-bionic-18.04-amd64-minimal-20230208"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}
