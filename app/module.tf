module "ebs" {
  source = "../ebs"
}

module "SG" {
  source = "../SG"
}

module "vpc" {
  source = "../vpc"
}

module "ec2" {
  source         = "../EC2module"
  instancetype   = var.instancetype
  aws_common_tag = var.aws_common_tag
}
