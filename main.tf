terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.52.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.4.3"
    }
  }

  cloud {
    organization = "bennun-labs"

    workspaces {
      name = "teste-envs"
    }
  }

  required_version = ">= 1.1.0"
}

provider "aws" {
  region = "us-east-1"
}


output "cname_name" {
  value = var.CNAME_NAME
}

output "cname_value" {
  value = var.CNAME_VALUE
}