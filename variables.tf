variable "ami_id" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "subnet_id" {
  type = string
  default = ""
}

variable "availability_zone" {
  type = string
  default = ""
}

variable "key_name" {
  type = string
  default = ""
}

variable "security_group_ids" {
  type = list(string)
  default = [  ]
}

variable "instance_tags" {
  type = map(string)
  default = {
  }
}
variable "configure_root_device" {
  type = bool
  default = false
}

variable "root_volume_size" {
  type = number
  default = 8
}

variable "root_volume_type" {
  type = string
  default = "gp3"
}

variable "is_root_volume_encrypted" {
  type = bool
  default = false
}

variable "is_root_volume_deleted_on_termination" {
  type = bool
  default = true
}

variable "root_volume_tags" {
  type = map(string)
  default = {
  }
}