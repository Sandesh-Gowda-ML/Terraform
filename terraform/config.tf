terraform {
  backend "s3" {
    bucket = "sandeshterraform"
    key    = "provider.tf"
    region = "us-east-1"
  }
}
