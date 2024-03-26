data "aws_ami" "amzlinux" {
    most_recent = true
    owners = ["amazon"]
    filter {
      name = "name"
      values = ["amzn2-ami-hvm-*-gp2"]
    }
    filter {
      name = "root-device-type"
      values = ["ebs"]
    }
    filter {
      name = "virtualization-type"
      values = ["hvm"]
    }
    filter {
      name = "architecture"
      values = ["x86_64"]
    }

}



data "aws_security_group" "sg" {
    id = "sg-0aba90705bd5ae22d"
}
data "aws_subnet" "sub1" {
    id = "subnet-01b195876af21ae32"
  
}
  
