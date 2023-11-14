resource "aws_vpc" "devops-vpc" { 
 cidr_block       = "172.168.0.0/27" 
 instance_tenancy = "default" 
 enable_dns_hostnames = "true" 
 tags = { 
   Name = "devops-vpc" 
 } 

} 

  
