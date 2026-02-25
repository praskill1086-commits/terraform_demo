terraform {
 required_providers {
   aws = {
     source = "hashicorp/aws"
     version = "~> 4.16"
   }
 }
 required_version = ">= 1.2.0"
}
provider "aws" {
 region = "ap-south-1"
}
resource "aws_instance" "example" {
 ami = "ami-051a31ab2f4d498f5"
 instance_type = "t3.micro"
 tags = {
   Name = "ExampleInstance"
 }
 }


