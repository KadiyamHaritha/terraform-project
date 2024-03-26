resource "aws_instance" "devopes" {
    ami = data.aws_ami.amzlinux.id
    instance_type = "t2.micro"
    subnet_id = data.aws_subnet.sub1.id
    security_groups = [data.aws_security_group.sg.id]
    
    tags = {
      Name = "devopes"
    }
}
