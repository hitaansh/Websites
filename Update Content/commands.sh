# Create an S3 bucket that the application code will be uploaded to
aws s3 mb s3://amogh-code-sam

# sam build
sam build

# aws cloudformation package OR sam package
aws cloudformation package --s3-bucket amogh-code-sam --template-file .aws-sam/build/template.yaml --output-template-file gen/template-generated.yaml

# aws cloudformation deploy OR sam deploy
aws cloudformation deploy --template-file gen/template-generated.yaml --stack-name updateContent --capabilities CAPABILITY_IAM