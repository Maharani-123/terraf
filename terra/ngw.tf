resource "aws_nat_gateway" "devops-ngw" { 
 allocation_id = aws_eip.devops-eip.id 
 subnet_id     = aws_subnet.devops-subnet-pub.id 
 tags = { 
  Name = "devops-ngw" 
 } 
 depends_on = [aws_internet_gateway.devops-igw] 

} 
