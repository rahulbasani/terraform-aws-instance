resource "aws_instance" "tf_instance" {
  ami = local.temp_ami
  instance_type = var.instance_type
  availability_zone = var.az
  subnet_id = local.temp_subnet
  associate_public_ip_address = var.publicIp
  vpc_security_group_ids = []
  key_name = var.key_name

  tags = var.instance_tags

  dynamic root_block_device {
    for_each = var.configure_root_device ? [1] : []
    content {   
        volume_size = var.root_volume_size
        volume_type = var.root_volume_type
        encrypted = var.is_root_volume_encrypted
        delete_on_termination = var.is_root_volume_deleted_on_termination

        tags = var.root_volume_tags
    }
  }
}

# resource "aws_ebs_volume" "volume" {
#   availability_zone = var.az
#   size = var.disk_size
#   encrypted = var.disk_encrypt
#   iops = var.disk_iops
#   type = var.disk_type

#   tags = merge(var.disk_tags,
#     {"Device Name" = var.device_name}
#   )
# }

# resource "aws_volume_attachment" "attach_volume" {
#   for_each = aws_ebs_volume.volume
#   device_name = 
#   volume_id = each.volume_id
#   instance_id = aws_instance.tf_instance
# }