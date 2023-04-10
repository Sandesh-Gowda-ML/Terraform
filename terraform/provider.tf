provider "aws" {
  region     = "${var.region}"
  version    = "v2.70.0"
  access_key = AWS_ACCESS_KEY_ID
  secret_key = AWS_SECRET_ACCESS_KEY

