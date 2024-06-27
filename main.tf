terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.6.2"
    }
  }
}

# provider "random" {
  
# }

resource "random_string" "random" {
  length           = 5
  special          = false
}

output "s3_bucket_name" {
    value = random_string.random.id
}