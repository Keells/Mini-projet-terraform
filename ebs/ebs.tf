resource "aws_ebs_volume" "my_ebs" {
  availability_zone = "us-east-1a"
  size              = var.ebs_size

  tags = var.aws_ebs_tag
}
