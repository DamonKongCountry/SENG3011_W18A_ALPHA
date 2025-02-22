// can update these versions later
terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 5.38.0"
    }
    archive = {
        source = "hashicorp/archive"
        version = "~> 2.4.2"
    }
  }

  // maybe?
  // required_version = "~> 1.2"
}