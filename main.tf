terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-northeast-1"
}

# 変更後：variable を使う
variable "bucket_name" {
  description = "S3バケットの名前"
  type        = string
}

resource "aws_s3_bucket" "example" {
  bucket = var.bucket_name  # ← 変数参照
}