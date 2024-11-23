data "aws_ami" "ami_id" {
  most_recent = true
  owners = ["amazon"]
  
  dynamic filter {
    for_each = local.filters
    content {
      name = filter.value["name"]
      values = filter.value["values"]
    }
    
  }
}

data "aws_vpc" "vpc" {
  
}

data "aws_subnet" "subnet" {
  availability_zone = var.az
}
