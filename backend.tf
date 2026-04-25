terraform {
  backend "s3" {
    bucket         = "terraform-state-chayanne"
    key            = "ec2-lab/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}