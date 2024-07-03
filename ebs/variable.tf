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
