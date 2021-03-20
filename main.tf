#Indicating the provider as aws, the region, and providing access information
provider "aws" {
	region 		= "us-west-1"
	access_key 	= var.access_key
	secret_key	= var.secret_key
}

#deploying aws resource, specifying the image, and instance size
resource "aws_instance" "web_server" {
	ami				= "ami-0a245a00f741d6301"
	instance_type	= "t2.micro"
}
