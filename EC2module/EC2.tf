module "SG" {
  source = "../SG"
}

resource "aws_instance" "myec2" {
  ami             = data.aws_ami.app_ami.id
  instance_type   = var.instancetype
  key_name        = "devops-louise"
  tags            = var.aws_common_tag
  security_groups = ["${module.SG.SG}"]
  user_data       = file("../app/userdata.tpl")

  subnet_id = module.SG.subnet1
}
