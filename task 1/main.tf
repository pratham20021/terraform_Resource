# provider "aws"{
#     region = "ap-south-1"
# }

# resource"aws_instance" "my_ec2"{
#     count = 10
#     ami = "ami-0db56f446d44f2f09"
#     instance_type = "t3.micro"
# tags = {
#         Name = "my_instance-${count.index}"
#     }

# }

# resource "aws_s3_bucket" "terraform_state" {
#   bucket = "pratham-terraform-state-bucket-12345"
# }

# resource "aws_s3_bucket_versioning" "versioning" {
#   bucket = aws_s3_bucket.terraform_state.id

#   versioning_configuration {
#     status = "Enabled"
#   }
# }

# resource "aws_dynamodb_table" "terraform_lock" {
#   name         = "terraform-lock-table"
#   billing_mode = "PAY_PER_REQUEST"

#   hash_key = "LockID"

#   attribute {
#     name = "LockID"
#     type = "S"
#   }
# }


cd 