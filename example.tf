provider "aws" {
	region ="us-west-1"
	access_key = var.access_key
	secret_key = var.secret_key
}

resource "aws_instance" {
	ami = "ami-0c7945b4c95c0481c"
	instance_type = "t2.micro"
	tags = {
		name = "CM"
	}

}
