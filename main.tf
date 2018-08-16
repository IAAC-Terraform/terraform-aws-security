provider "aws" {
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
  region     = "${var.region}"
}

module "iam-role" {
  source = "./modules/security/"
  role_name = "aws-elasticbeanstalk-service-role"
}
