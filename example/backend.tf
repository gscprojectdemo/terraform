terraform {
  backend "s3" {
    bucket = "terraformstatebbucket11062025"
    key    = "tf/staging/terraform.tfstate"
    region = "ap-south-1"
    dynamodb_table = "tfstate-dynamodb-table" 
    #use_lockfile = true
  }
}