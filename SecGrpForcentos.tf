resource "aws_security_group" "centos_rule" {
  name        = "centos_rule"
  description = "Allow ssh http icmp inbound traffic"

  ingress {
    description      = "SSH from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["172.31.94.107/32"]
    ipv6_cidr_blocks = ["::/0"]
  }
  
    ingress {
    description      = "SSH from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["109.172.225.247/32"]
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    description      = "HTTP from VPC"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["172.31.94.107/32"]
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    description      = "HTTPS from VPC"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["172.31.94.107/32"]
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    description      = "ICMP from VPC"
    from_port         = -1
    to_port           = -1
    protocol          = "icmp"
    cidr_blocks      = ["172.31.94.107/32"]
    ipv6_cidr_blocks = ["::/0"]
  }
  
    egress {
    description      = "SSH from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["172.31.94.107/32"]
    ipv6_cidr_blocks = ["::/0"]
  }
  
    egress {
    description      = "SSH from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["109.172.225.247/32"]
    ipv6_cidr_blocks = ["::/0"]
	}

  egress {
    description      = "HTTP from VPC"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["172.31.94.107/32"]
    ipv6_cidr_blocks = ["::/0"]
  }

  egress {
    description      = "HTTPS from VPC"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["172.31.94.107/32"]
    ipv6_cidr_blocks = ["::/0"]
  }

  egress {
    description      = "ICMP from VPC"
    from_port         = -1
    to_port           = -1
    protocol          = "icmp"
    cidr_blocks      = ["172.31.94.107/32"]
    ipv6_cidr_blocks = ["::/0"]
  }

   tags = {
    Name = "centos_rule"
   }
   
 }