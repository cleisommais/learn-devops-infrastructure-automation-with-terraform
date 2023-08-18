variable "AWS_ACCESS_KEY" {

}
variable "AWS_SECRET_KEY" {

}
variable "AWS_REGION" {
  default = "us-east-1"
}

variable "AMIS" {
  type = map(any)
  default = {
    eu-central-1 = "ami-123456"
    us-east-1    = "ami-456789"
    us-west-1    = "ami-963258"
  }
}
