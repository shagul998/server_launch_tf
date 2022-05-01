terraform {
  backend "s3" {
    bucket = "mqtt-new-cluster-2022"
    key    = "aws-jenkins-remote.tfstate"
    region = "us-east-1"
  }
}
