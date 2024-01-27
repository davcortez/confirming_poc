# confirming_poc
## Description
A PoC for confirming

## Steps to deploy
- Export your aws credentials from terminal [AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY]
- Export the AWS_REGION
- zip the lambda code using `zip` tool. Example: `zip lambda.zip *py`
<!-- BEGIN_TF_DOCS -->

## Examples (local)
POST /operation

`curl -X POST "http://127.0.0.1:8000/operation" -H "accept: application/json" -H "Content-Type: application/json" -d '{
  "id": "550e8400-e29b-41d4-a716-446655440000",
  "user_id": "550e8400-e29b-41d4-a716-446655440000",
  "operation_type": 1,
  "invoices": [],
  "currency": "USD",
  "creation_dt": "2024-01-27",
  "status": 1,
  "finish_date": "2024-02-10"
}'`

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_dynamodb"></a> [dynamodb](#module\_dynamodb) | ./modules/dynamodb | n/a |
| <a name="module_lambda"></a> [lambda](#module\_lambda) | ./modules/lambda | n/a |

## Resources

No resources.

## Inputs

No inputs.

## Outputs

No outputs.
<!-- END_TF_DOCS -->