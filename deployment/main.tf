
provider "aws" {
  region = var.aws_region
  // profile = "default"
}

resource "aws_s3_bucket" "bucket_name" {
    // bucket = "" ??
}

resource "aws_s3_bucket_ownership_controls" "bucket_name" {
    bucket = "aws_s3_bucket.bucket_name.id"
    rule {
      object_ownership = "BucketOwnerPreferred"
    }
}

resource "aws_s3_bucket_acl" "bucket_name" {
  depends_on = [ aws_s3_bucket_ownership_controls.bucket_name ]
  bucket = aws_s3_bucket.bucket_name.id
  acl = "private"
}

// TODO: lambda archive template


// TODO: lambda function template

// TODO: cloudwatch logs

// TODO: IAM role and policy attachment

/*
resource "aws_apigatewayv2_api" "lambda" {
    name = "api name"
    protocol_type = "HTTP"
}

resource "aws_apigatewayv2_stage" "lambda" {
    api_id = aws_apigatewayv2_api.lambda.id

    name = "api stage"
    auto_deploy = true    

    // TODO: access log settings
}
*/

// TODO: API Gateway integration

// TODO: API Gateway route

// TODO: cloudwatch logs for route

// TODO: lambda and API Gateway perms
