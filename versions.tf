terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  # Configure a remote backend using S3 for state file storage. 
  # This is a best practice for CI/CD and team collaboration.
  # You would need to create this S3 bucket manually the first time.
  # backend "s3" {
  #   bucket = "your-unique-terraform-state-bucket" 
  #   key    = "s3-bucket-project/terraform.tfstate"
  #   region = "us-east-1" 
  #   encrypt = true
  # }
}

provider "aws" {
    region = "us-east-1"
}