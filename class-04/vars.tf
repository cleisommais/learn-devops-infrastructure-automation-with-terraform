variable "AWS_ACCESS_KEY" {

}
variable "AWS_SECRET_KEY" {

}
variable "AWS_REGION" {
  default = "eu-central-1"
}

variable "AMIS" {
  type = map(any)
  default = {
    eu-central-1 = "ami-123456"
    eu-east-1    = "ami-456789"
    us-west-1    = "ami-963258"
  }
}

variable "PATH_TO_PRIVATE_KEY" {
  default = "mykey"
}

variable "PATH_TO_PUBLIC_KEY" {
  default = "mykey.pub"
}

variable "INSTANCE_USERNAME" {
  default = "ubuntu"
}

