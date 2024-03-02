resource "aws_eip" "jenkins_eip" {
    vpc   = true
    instance = aws_instance.revive_jenkins.id
     
     depends_on = [
        data.aws_internet_gateway.revive_igw
     ]
}

data "aws_internet_gateway" "igw" {
  internet_gateway_id = ""
  filter {
    name   = "attachment.vpc-id"
    values = [var.vpc_id]
  }
}