output "function_arn" {
  value = aws_lambda_function.lambda_function.arn
}

output "function_url" {
  description = "Function URL."
  value       = aws_lambda_function_url.lambda_function_url.function_url
}