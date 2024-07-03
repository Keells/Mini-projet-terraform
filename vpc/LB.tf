module "ec2" {
  source = "../EC2module"
}

resource "aws_eip" "lb" {
  instance = module.ec2.ec2_id
  domain   = "vpc"

  provisioner "local-exec" {
    command = "echo PUBLIC IP: ${aws_eip.lb.public_ip}; ID: ${module.ec2.ec2_id}; AZ: ${module.ec2.ec2_availability_zone} > infos_ec2.txt"
  }
}
