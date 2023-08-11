provider "aws" {
  #--Standard Provider Configurations
  region = "us-east-1"
  default_tags {
    tags = {
      Environment = "Local"
      Service     = "LocalStack"
    }
  }
  #--Mocked Credentials
  access_key = "test"
  secret_key = "test"

  #--Forces proper S3 path validation. Hopefully this is in use throughout your code! http://s3.localhost.localstack.cloud:4566
  s3_force_path_style = true

  #--These settings allow for authentication and other validations which are enforced
  #--in the AWS provider to be bypassed by Localstack.
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true
  #--Redirect Service Endpoints to Localstack. Whilst we won't be any of these it's good
  #--to see how they work and one should be specified to avoid rogue creations.
  #--See the Localstack docs for a full list of suitable endpoints):
  #--https://registry.terraform.io/providers/hashicorp/aws/latest/docs/guides/custom-service-endpoints#available-endpoint-customizations
  endpoints {
    apigateway     = "http://localhost:4566"
    apigatewayv2   = "http://localhost:4566"
    cloudformation = "http://localhost:4566"
    cloudwatch     = "http://localhost:4566"
    dynamodb       = "http://localhost:4566"
    ec2            = "http://localhost:4566"
    es             = "http://localhost:4566"
    elasticache    = "http://localhost:4566"
    firehose       = "http://localhost:4566"
    iam            = "http://localhost:4566"
    kinesis        = "http://localhost:4566"
    lambda         = "http://localhost:4566"
    rds            = "http://localhost:4566"
    redshift       = "http://localhost:4566"
    route53        = "http://localhost:4566"
    s3             = "http://s3.localhost.localstack.cloud:4566"
    secretsmanager = "http://localhost:4566"
    ses            = "http://localhost:4566"
    sns            = "http://localhost:4566"
    sqs            = "http://localhost:4566"
    ssm            = "http://localhost:4566"
    stepfunctions  = "http://localhost:4566"
    sts            = "http://localhost:4566"
  }
}

terraform {
  # Only allow this Terraform version. Note that if you upgrade to a newer version, Terraform won't allow you to use an
  # older version, so when you upgrade, you should upgrade everyone on your team and your CI servers all at once.
  required_version = "= 1.5.5"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0.0"
    }
  }
}
