provider "aws" {

}

resource "aws_instance" "sample" {
  ami           = var.AMIS[var.AWS_REGION]
  instance_type = "t2.micro"
}

variable "AMIS" {
  type = map(string)
  default = {
    eu-west-1 = "my ami value"
  }
}

variable "AWS_REGION" {
  type = string
}

variable "myvar" {
  type    = string
  default = "hello terraform"
}

variable "mymap" {
  type = map(string)
  default = {
    "key" = "value"
  }
}

variable "mylist" {
  type    = list(number)
  default = [1, 2, 3]
}
