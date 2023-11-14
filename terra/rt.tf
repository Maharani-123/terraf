#private 
resource "aws_route_table" "devops-route-pvt" { 
  vpc_id = aws_vpc.devops-vpc.id 
  route { 
    cidr_block = "0.0.0.0/0" 
    gateway_id = aws_internet_gateway.devops-igw.id 
  } 
  tags = { 
    Name = "devops-route-pvt" 
  } 
} 

#public 
resource "aws_route_table" "devops-route-pub" { 
  vpc_id = aws_vpc.devops-vpc.id 
  route { 
    cidr_block = "0.0.0.0/0" 
    gateway_id = aws_internet_gateway.devops-igw.id 
  } 
  tags = { 
    Name = "devops-route-pub" 
  } 
} 

  

  

#rt subnet association 
resource "aws_route_table_association" "devops-pvt-rt-subnet" { 
  subnet_id      = aws_subnet.devops-subnet-pvt.id 
  route_table_id = aws_route_table.devops-route-pvt.id 
} 

  

resource "aws_route_table_association" "devops-pub-rt-subnet" { 
  subnet_id      = aws_subnet.devops-subnet-pub.id 
  route_table_id = aws_route_table.devops-route-pub.id 
} 

  
