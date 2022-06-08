output "bucket_tag" {
  value = aws_s3_bucket.b.tags["Name"]
}
