

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
  name = var.user_names[0]
}

resource "aws_iam_user" "user2" {
  name = var.user_names[1]
}

resource "aws_iam_user" "user3" {
  name = var.user_names[2]
}