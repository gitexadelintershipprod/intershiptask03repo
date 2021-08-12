resource "aws_instance" "centos" {
    ami           = "ami-0c2b8ca1dad447f8a"
    instance_type = "t2.micro"
    key_name = "mykeypayr"
    subnet_id = "subnet-fb4764da"
	security_groups = [ "sg-03c6b11cad9ce66bc" ]

    tags = {
        Name = "Exadelintership10"
    } 
}