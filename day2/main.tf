resource "aws_vpc" "devopes" {   
    cidr_block = "10.0.0.0/16"
    tags = {
        Name ="devopes"
    }
    
}

resource "aws_subnet" "devopes" {
    vpc_id = aws_vpc.devopes.id
     cidr_block = "10.0.0.0/24"
     tags = {
        Name = "test_pub"
     }
  
}

resource "aws_internet_gateway" "devopes" {
    vpc_id = aws_vpc.devopes.id
  
}
resource "aws_route_table" "devopes" {
vpc_id = aws_vpc.devopes.id
  route {
  cidr_block = "0.0.0.0/0"
 gateway_id = aws_internet_gateway.devopes.id
  }
}

resource "aws_route_table_association" "devopes" {
    route_table_id = aws_route_table.devopes.id
    subnet_id = aws_subnet.devopes.id

}
resource "aws_security_group" "custom_sg" {
    name = "network_sg_id"
    vpc_id = aws_vpc.devopes.id
    tags = {
      Name = "sg1"
    }

    ingress {
        description = "TLS from vpc"
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]  
}
 ingress {
        description = "TLS from vpc"
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]  
}
 ingress {
        description = "TLS from vpc"
        from_port = 443
        to_port = 443
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]  
}
egress {
    from_port = 0
    to_port = 0
    protocol = -1
     cidr_blocks = ["0.0.0.0/0"] 
}
}