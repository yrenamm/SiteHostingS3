# SiteHostingS3
Static site hosted on S3 AWS
Need to add to user policy to terraform user:
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": "s3:PutBucketPolicy",
      "Resource": [
        "arn:aws:s3:::bucket-irinamm-2024"  # Replace with your bucket ARN
      ],
      "Condition": {
        "StringLike": {
          "s3:BucketPolicy.Statement[].Principal.*": "arn:aws:iam::YOUR_ACCOUNT_ID:root" 
        }
      }
    }
  ]
}
x