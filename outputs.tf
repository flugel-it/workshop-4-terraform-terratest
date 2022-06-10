output "bucket_tag" {
  description = "Value of the s3 bucket tags"
  value       = aws_s3_bucket.example_s3_bucket.tags["Name"]
}

output "s3_arn" {
  description = "The ARN of the s3 bucket"
  value       = try(aws_s3_bucket.example_s3_bucket.arn, "")
}
