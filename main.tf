terraform {
  cloud {
    organization = "blackzu-den"

    workspaces {
      name = "terra-house"
    }
  }
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.6.2"
    }
    aws = {
      source = "hashicorp/aws"
      version = "5.56.1"
      
    }
  }
}

# provider "random" {
  
# }
provider "aws" {
  region     = "us-east-1"
  
}


resource "random_string" "random" {
  length           = 6
  special          = false
  upper = false
}

resource "aws_s3_bucket" "example" {
  bucket = random_string.random.id

  
}
output "s3_bucket_name" {
    value = random_string.random.id
}