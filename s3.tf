resource "aws_s3_bucket" "test" {
  bucket = "my-tf-test-bucket"
  acl    = "private"

  tags = {
    Name        = "test-bucket"
    Environment = "Dev"
  }
}
