terraform {
  backend "s3" {
    bucket = "anzai-terraform-practice-001"
    key    = "dev/terraform.tfstate"
    region = "ap-northeast-1"
  }
}

terraform {
  required_version = ">= 0.14"
}

provider "aws" {
  region = "ap-northeast-1"
}

resource "aws_s3_bucket" "example" {
  bucket = "anzai-terraform-practice-001"

  tags = {
    Name = "terraform-practice"
    Env  = "dev"
  }
}
