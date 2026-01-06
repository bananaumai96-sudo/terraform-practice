terraform {
  backend "s3" {
    bucket = "anzai-terraform-backend"   # backend 用バケット
    key    = "dev/terraform.tfstate"
    region = "ap-northeast-1"
  }
}

provider "aws" {
  region = "ap-northeast-1"
}

resource "aws_s3_bucket" "practice" {
  bucket = "anzai-terraform-practice-001"  # 学習用
  force_destroy = true                       # 中身があっても destroy 可能

  tags = {
    Name = "terraform-practice"
    Env  = "dev"
    Owner = "arou"
  }
}
