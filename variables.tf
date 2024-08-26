# Input variable definition.

variable "aws_region" {
  type        = string
  description = "Region"
  default     = "us-east-1"
}

variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
}

variable "tags" {
  description = "Tags"
  type        = map(string)
  default     = {}
}