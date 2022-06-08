variable "region" {
  type        = string
  description = "AWS region"
  default     = "us-east-1"
}

variable "bucket_name" {
  type        = string
  description = "The name of the bucket."
  default     = "flugel-workshop-bucket"
}

variable "tags" {
  type = map(any)
  default = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

variable "acl" {
  type        = string
  description = "The canned ACL to apply. Valid values are private, public-read, public-read-write, aws-exec-read, authenticated-read, and log-delivery-write"
  default     = "private"
}
