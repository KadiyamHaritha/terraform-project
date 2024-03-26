resource "aws_instance" "test" {
    ami = "ami-02d7fd1c2af6eead0"
    instance_type = "t2.micro"
    key_name = "linux"
  
}

resource "aws_s3_bucket" "test" {
    bucket = "mybuckhyd123"
    depends_on = [ aws_instance.test ]
  
}