resource "aws_instance" "devopes" {
    ami = var.ami
    instance_type = var.instance_type
    key_name = var.key_name
    subnet_id = aws_subnet.devopes.id
    security_groups = [aws_security_group.custom_sg.id]
    tags = {
      Name = "devopes"
        
        }
    }

