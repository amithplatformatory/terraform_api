terraform {
  required_version = ">= 0.12"
}

provider "aws" {
  region = var.aws_region
}


terraform {
  backend "s3" {
    bucket = "amithcodebucket"
    key    = "terraform.tfstate"
    region = "ap-southeast-2"
  }
}
