resource "aws_instance" "tf_instance" {
  ami = var.ami_id
  instance_type = var.instance_type
  availability_zone = var.availability_zone
  subnet_id = var.subnet_id
  vpc_security_group_ids = var.security_group_ids
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