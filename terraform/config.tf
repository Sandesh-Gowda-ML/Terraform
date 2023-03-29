terraform {
  backend "s3" {
    bucket = "sandeshterraform"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}
