provider "aws" {
  region = "ap-south-1"
  
}

 
 locals {
    instance_names = [
        "Pratham",
        "Rohit",
        "Suresh",
        "Anjali",
        "Vikram",
        "Neha",
        "Amit",
        "Priya",
        "Rahul",
        "Sneha"
    ]
}

resource "aws_instance" "web" {
  for_each      = toset(local.instance_names)
  ami           = "ami-0f58b397bc5c1f2e8"
  instance_type = "t3.micro"

  tags = {
    Name = each.key
  }
}