File With Access token and logon inframtion is not present here
setp 1 : install terrafrom ( make "terraform init" and connecting to aws )
step 2 : create_ubuntu.tf file ( this script is creating ubuntu 20.04 instance with name Exadelintership04, add key subnet and security group )
step 3 : SecGRP.tf file ( this script is creating allow_ssh_http_icmp security group wuth ingress and egress rules for ubuntu instance )
step 4 : centos.tf ( this script is creating amazon linux instance with name Exadelintership10, add key subnet and security group )
step 5 : SecGrpForcentos.tf ( this script is creating allow_ssh_http_icmp security group wuth ingress and egress rules for amzon linux instance, allow acce only to ubuntu vm )
step 6 : Docker.sh & httpd.sh this scripts make install apache and kubernates but I could not run this script use terraform and run this scripts manual. 
steo 7 : make terraform validate is success;  terraform plan  output of this command is in  file: terraform pan.
