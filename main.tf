resource "aws_instance" "ec2_instance" {
  count = var.servers

  ami           = var.image[count.index]
  instance_type = var.instancetype[count.index]

  security_groups = [aws_security_group.custom_sg.name]

  tags = {
    "Name"         = "vm-${count.index}"
    "CreationDate" = formatdate("DD-MMM-YY hh:mm:ss ZZZ", timestamp())
  }
}

resource "aws_security_group" "custom_sg" {
  name        = "custom-security-group"
  description = "Allow TLS & Non-TLS inbound traffic and all outbound traffic"

  dynamic "ingress" {
    for_each = var.port_and_protocol
    iterator = portandprotocol
    content {
      from_port   = portandprotocol.value
      to_port     = portandprotocol.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/32"]
    }
  }
}