resource "aws_s3_bucket" "bucket" {
  count = 5

  bucket = "hvgnhvugvyugvugcu-${count.index + 1}"
}