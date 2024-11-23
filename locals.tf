locals {
  filters = [var.platform == "windows" ? {
    name = "name"
    values = ["Windows_Server-2019-English-Full-Base*"]
  }: {
    name = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  },{
    name   = "virtualization-type"
    values = ["hvm"]
  }]

#if no ami id is given then latest ami id of the given os is taken
  temp_ami = var.ami_id != " " ? var.ami_id : data.aws_ami.ami_id.id

# if no subnet id is given then first subnet in the az will be taken
  temp_subnet = var.subnet_id != " " ? var.subnet_id : data.aws_subnet.subnet.id
}
