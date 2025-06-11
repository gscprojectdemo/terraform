terraform {
  backend "s3" {
    bucket = "terraformmstatebuccket11062025"
    key    = "tf/dev/terraform.tfstate"
    region = "ap-south-1"
  }
}
