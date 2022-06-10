variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "bucket_name" {
  description = "The name of the bucket."
  type        = string
  default     = "flugel-workshop-bucket"
}

variable "tags" {
  description = "A map of tags to assign to the resource."
  type        = map(any)
  default = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

variable "acl" {
  description = "The canned ACL to apply. Valid values are private, public-read, public-read-write, aws-exec-read, authenticated-read, and log-delivery-write"
  type        = string
  default     = "private"
}
