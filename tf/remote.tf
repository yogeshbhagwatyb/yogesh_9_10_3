#resource "aws_s3_bucket" "b" {
 # bucket = "iwayq-terraform-state"

  #tags = {
   # Name        = "iwayq-terraform-state"
    #Environment = "Dev"
  #}
#}

terraform {
backend "s3" {
    bucket = "jhooq-terraform-s3-buket"
    key = "jhooq/terraform/remote/s3/terraform.tfstate"
    region     = "us-east-1"
    dynamodb_table = "dynamodb-state-locking"
}
}

#resource "aws_dynamodb_table" "terraformstatelock" {
 # name = "iwayq-dynamodb-lock-state"
  #read_capacity = 20
  #write_capacity = 20
  #hash_key = 

#}
