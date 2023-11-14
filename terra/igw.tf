resource "aws_internet_gateway" "devops-igw" { 
 vpc_id = aws_vpc.devops-vpc.id 
 tags = { 
  Name = "devops-igw" 
 } 

} 
