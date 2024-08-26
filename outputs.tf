# Output the public URL of the uploaded file

output "name" {
  description = "id of the bucket"
  value       = aws_s3_bucket.website.id
}

output "arn" {
  description = "ARN of the S3 Bucket"
  value       = aws_s3_bucket.website.arn
}

output "bucket_domain_name" {
  description = "Bucket Domain Name of the S3 Bucket"
  value       = aws_s3_bucket.website.bucket_domain_name
}

output "bucket_regional_domain_name" {
  description = "Regional Domain Name"
  value       = aws_s3_bucket.website.bucket_regional_domain_name
}

output "bucket_region" {
  description = "Region"
  value       = aws_s3_bucket.website.region
}


# Static Website URL.
output "static_website_url" {
  value = "http://${aws_s3_bucket.website.bucket}.s3-website.${aws_s3_bucket.website.region}.amazonaws.com"
}