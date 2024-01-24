module "lambda" {
  source = "./modules/lambda"

  function_name = "lambdatest"
  filename      = "./confirming_api/lambda.zip"

  handler               = "main.handler"
  runtime               = "python3.11"
  environment_variables = var.environment_variables

}

module "dynamodb" {
  source       = "./modules/dynamodb"
  table_name   = "OPERATION"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "item_id"
}