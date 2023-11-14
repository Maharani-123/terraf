#private 
 resource "aws_instance" "devops-instance-pvt" { 
  ami           = "ami-06791f9213cbb608b" 
  instance_type = "t2.micro" 
  key_name = "gitt" 
  subnet_id   = aws_subnet.devops-subnet-pvt.id 
  security_groups = [aws_security_group.devops-sg-pvt.id] 
 tags = { 
    Name = "devops-instance-pvt" 
  } 
} 

  

  

#public 
 resource "aws_instance" "devops-instance-pub" { 
  ami           = "ami-06791f9213cbb608b" 
  instance_type = "t2.micro" 
  key_name = "gitt" 
  subnet_id   = aws_subnet.devops-subnet-pub.id 
  security_groups = [aws_security_group.devops-sg-pub.id]
  associate_public_ip_address = true
  tags = { 
    Name = "devops-instance-pub" 
  } 
} 

  
