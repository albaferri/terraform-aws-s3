resource "aws_s3_bucket" "my_iac_bucket" {
  bucket = "albaferri-iac-s3-bucket" # <<-- ***REPLACE WITH A GLOBALLY UNIQUE NAME***

  tags = {
    Name        = "My-IAC-S3-Bucket"
    Environment = "Production"
  }
}

# Best practice to prevent the S3 bucket from being accidentally publicly accessible
resource "aws_s3_bucket_public_access_block" "my_iac_bucket_access_block" {
  bucket = aws_s3_bucket.my_iac_bucket.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

output "s3_bucket_id" {
  description = "MyIACS3Bucket"
  value       = aws_s3_bucket.my_iac_bucket.id
}