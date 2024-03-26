provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "test" {
    ami = "ami-02d7fd1c2af6eead0 "
    instance_type = "t2.micro"
    availability_zone = "us-east-1e"
    # subnet_id = "subnet-05dd70ee2801a16ba"
    key_name = "linux"
    
  tags = {
    Name = "test"
  }

