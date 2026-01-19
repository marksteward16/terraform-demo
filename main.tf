

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
  count = length(var.user_names)
  name  = var.user_names[count.index]
}