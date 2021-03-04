provider "aws" {
  region  = "us-east-1"
  profile = "default" # for initial setup run cmd "aws configure" and provide access and secret keys
}

resource "aws_instance" "Udacity-T2" {
    count = 4
    instance_type = "t2.micro"
    subnet_id = "subnet-xxxx"
    vpc_security_group_ids = ["sg-xxxx"]
    ami = "ami-0915bcb5fa77e4892" # Amazon Linux 2 AMI (HVM), SSD
}

resource "aws_instance" "Udacity-M4" {
    count = 2
    instance_type = "m4.large"
    subnet_id = "subnet-xxxx"
    vpc_security_group_ids = ["sg-xxxx"]
    ami = "ami-0915bcb5fa77e4892" # Amazon Linux 2 AMI (HVM), SSD
}

# terraform destroy -target=aws_instance.Udacity-M4[0]