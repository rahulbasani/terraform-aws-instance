variable "region" {
  type = string
  default = "ap-south-1"
}
variable "ami_id" {
  type = string
  default = ""
}

variable "platform" {
  type = string
  default = ""
}
variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "subnet_id" {
  type = string
  default = ""
}

variable "az" {
  type = string
  default = "ap-south-1a"
}

variable "publicIp" {
  type = bool
  default = false
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

// root volume details
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

// ebs volume details

# variable "disk_size" {
#   type = number
# }

# variable "disk_encrypt" {
#   type = bool
#   default = true
# }

# variable "disk_iops" {
#   type = number
# }

# variable "disk_type" {
#   type = string
#   default = "gp3"
# }

# variable "disk_tags" {
#   type = map(string)
# }

# variable "device_name" {
#   type = string
# }

