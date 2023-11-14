#private 
resource "aws_security_group" "devops-sg-pvt" { 
 name        = "securitygroup-pvt" 
 vpc_id      = aws_vpc.devops-vpc.id 
 ingress { 
 from_port        = 80 
 to_port          = 80 
 protocol         = "tcp" 
 cidr_blocks      = ["0.0.0.0/0"] 
 } 
 egress { 
 from_port        = 0 
 to_port          = 0 
 protocol         = "-1" 
 cidr_blocks      = ["0.0.0.0/0"] 
 } 

  tags = { 
    Name = "devops-sg-pvt" 
  } 

} 

  

  

#public 
resource "aws_security_group" "devops-sg-pub" { 
 name        = "securitygroup-pub" 
 vpc_id      = aws_vpc.devops-vpc.id 
 ingress { 
    from_port        = 0 
    to_port          = 0 
    protocol         = "-1" 
    cidr_blocks      = ["0.0.0.0/0"] 
  } 
 egress { 
    from_port        = 0 
    to_port          = 0 
    protocol         = "-1" 
    cidr_blocks      = ["0.0.0.0/0"] 
  } 
  tags = { 

    Name = "devops-sg-pub" 

  } 

} 

 
