provider "aws" {
    region = "us-east-1"
  
}
resource "aws_instance" "ops" {
    ami = "ami-02d7fd1c2af6eead0" 
    instance_type = "t2.micro"
    tags = {
      Name = "instance"    
      }
  
}