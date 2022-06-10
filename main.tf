resource "aws_s3_bucket" "example_s3_bucket" {
  bucket = var.bucket_name

  tags = var.tags
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.example_s3_bucket.id
  acl    = var.acl
}
