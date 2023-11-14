#private 
resource "aws_subnet" "devops-subnet-pvt" { 
 vpc_id     = aws_vpc.devops-vpc.id 
 cidr_block = "172.168.0.0/28" 
 enable_resource_name_dns_a_record_on_launch = "true" 
 tags = { 
  Name = "devops-subnet-pvt" 
 } 

} 

#public 
resource "aws_subnet" "devops-subnet-pub" { 
 vpc_id     = aws_vpc.devops-vpc.id 
 cidr_block = "172.168.0.16/28" 
 enable_resource_name_dns_a_record_on_launch = "true" 
 tags = { 
  Name = "devops-subnet-pub" 
 } 

} 
