variable "ebs_size" {
  type        = string
  description = "set ebs size"
  default     = 10
}

variable "aws_ebs_tag" {
  type        = map(any)
  description = "Set aws tag"
  default = {
    Name = "ebs-dev-louise"
  }
}

variable "sg_name" {
  type        = string
  description = "name of security groups"
  default     = "dev-louise-sg"
}

variable "instancetype" {
  type        = string
  description = "set aws instance type"
  default     = "t2.nano"
}

variable "aws_common_tag" {
  type        = map(any)
  description = "Set aws tag"
  default = {
    Name = "ec2-dev-louise"
  }
}
