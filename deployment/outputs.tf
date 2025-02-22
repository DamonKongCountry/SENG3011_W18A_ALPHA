
// TODO: bucket and function names

output "invoke_url" {
  description = "Invoke URL for API Gateway stage"
  value = "aws_apigatewayv2_stage.lambda.invoke_url"
}