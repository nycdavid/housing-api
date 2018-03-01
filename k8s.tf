provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "k8s_master" {
  ami = "ami-4188a071"
  instance_type = "t2.micro"

  tags {
    Name = "dko|housing-api|k8s|master"
  }
}
