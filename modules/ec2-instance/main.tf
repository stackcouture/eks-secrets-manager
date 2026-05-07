data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "private_ec2" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"
  #   subnet_id              = aws_subnet.private_a.id
  subnet_id = var.private_subnet_id

  #   vpc_security_group_ids = [
  #     aws_security_group.private_ec2.id
  #   ]
  vpc_security_group_ids = [
    var.ec2_private_sg_id
  ]

  #   iam_instance_profile = aws_iam_instance_profile.ssm.name
  iam_instance_profile = var.aws_iam_instance_profile_ssm_name
  tags = {
    Name = var.private_instance_name
    env  = var.env
  }
}