

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "us-east-2"
}

# add 3 IAM users with admin permissions
resource "aws_iam_user" "user1" {
  name = "markymark123"
}

resource "aws_iam_user" "user2" {
  name = "markymark456"
}

resource "aws_iam_user" "user3" {
  name = "markymark789"
}