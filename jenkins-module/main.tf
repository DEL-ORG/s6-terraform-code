resource "aws_instance" "Master" {
  ami                    = var.instance_params["instance_ID"]
  instance_type          = var.instance_params["instance_type"]
  key_name               = var.instance_params["key_name"]
  vpc_security_group_ids = var.instance_params["vpc_security_group_ids"]
  subnet_id              = var.instance_params["subnet_id"]

  root_block_device {
    volume_size = var.instance_params["volume_size"]
  }


  tags = merge(var.tags, {
    Name = format("${var.instance_name}-%s-%s-%s", var.tags["branch"], var.tags["base-image"], var.tags["base-image-tag"])
    },
  )
}