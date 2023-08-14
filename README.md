# learn-devops-infrastructure-automation-with-terraform

learn-devops-infrastructure-automation-with-terraform

aws --endpoint-url=http://localhost:4566 ec2 describe-instances --region=us-east-1

alias awslocal="AWS_ACCESS_KEY_ID=test AWS_SECRET_ACCESS_KEY=test AWS_DEFAULT_REGION=${DEFAULT_REGION:-$AWS_DEFAULT_REGION} aws --endpoint-url=http://${LOCALSTACK_HOST:-localhost}:4566"

awslocal ec2 describe-instances

export AWS_ACCESS_KEY_ID="test"
export AWS_SECRET_ACCESS_KEY="test"
export AWS_DEFAULT_REGION="eu-central-1"

aws --endpoint-url=http://localhost:4566 kinesis list-streams

aws --endpoint-url=http://localhost:4566 ec2 describe-instances

aws configure list

export PATH=$PATH:/Users/c92036b/Library/Python/3.9/bin
