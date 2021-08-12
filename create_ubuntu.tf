data "aws_ami" "ubuntu" {
    most_recent = true

    filter {
        name   = "name"
        values = ["ubuntu/images/hvm-ssd/ubuntu-xenial-16.04-amd64-server-*"]
    }

    filter {
        name   = "virtualization-type"
        values = ["hvm"]
    }

    owners = ["099720109477"] # Canonical
}

resource "aws_instance" "Ubuntu" {
    ami           = "${data.aws_ami.ubuntu.id}"
    instance_type = "t2.micro"
    associate_public_ip_address = true
    key_name = "mykeypayr"
    subnet_id = "subnet-fb4764da"
	security_groups = [ "sg-0a9dcc4c590663f6b" ]

    tags = {
        Name = "Exadelintership04"
    } 
	
}