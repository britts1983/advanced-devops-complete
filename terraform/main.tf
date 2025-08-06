# terraform/main.tf

provider "aws" {
  region     = "us-east-1"
  access_key = "mock_access_key"
  secret_key = "mock_secret_key"
}

resource "aws_s3_bucket" "devops_bucket" {
  bucket        = "my-devops-demo-bucket-britto"
  force_destroy = true

  tags = {
    Name        = "DevOps Demo Bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_public_access_block" "block_public_access" {
  bucket = aws_s3_bucket.devops_bucket.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}


