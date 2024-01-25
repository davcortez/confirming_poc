resource "aws_iam_role" "LambdaRole" {
  name = "LambdaRole"
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "lambda.amazonaws.com"
      }
    }]
  })
}

data "template_file" "lambdapolicy" {
  template = "modules/lambda/policy.json"
}

resource "aws_iam_policy" "LambdaPolicy" {
  name        = "LambdaPolicy"
  path        = "/"
  description = "IAM policy for Lambda functions"
  policy      = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Action": "dynamodb:PutItem",
            "Effect": "Allow",
            "Resource": "arn:aws:dynamodb:*:*:table/OPERATION"
        },
        {
            "Effect": "Allow",
            "Action": [
                "logs:CreateLogStream",
                "logs:CreateLogGroup",
                "logs:PutLogEvents"
            ],
            "Resource": [
                "arn:aws:logs:*:*:*"
            ]
        }        
      ]  
}  
EOF
}

resource "aws_iam_role_policy_attachment" "LambdaRolePolicy" {
  role       = aws_iam_role.LambdaRole.name
  policy_arn = aws_iam_policy.LambdaPolicy.arn
}

resource "aws_lambda_function" "lambda_function" {
  filename      = var.filename
  function_name = var.function_name
  role          = aws_iam_role.LambdaRole.arn
  handler       = var.handler
  runtime       = var.runtime
}

resource "aws_lambda_function_url" "lambda_function_url" {
  function_name      = aws_lambda_function.lambda_function.arn
  authorization_type = "NONE"
}
