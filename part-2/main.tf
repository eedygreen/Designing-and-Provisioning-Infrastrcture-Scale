terraform {
  required_version = ">= 0.12"
}
locals {
  lambda_zip_location = "outputs/greet_lambda.zip"
}

data "archive_file" "greet_lambda" {
  type        = "zip"
  source_file = "greet_lambda.py"
  output_path = "${local.lambda_zip_location}"
}

resource "aws_lambda_function" "lambda_function" {
  filename                       = var.file_name
  function_name                  = var.function_name
  role                           = aws_iam_role.iam_lambda.arn
  handler                        = var.handler
  runtime                        = var.runtime
  timeout                        = var.timeout
  memory_size                    = var.memory_size
  source_code_hash               = data.archive_file.greet_lambda.output_base64sha256
  reserved_concurrent_executions = var.reserved_concurrent_executions
  tags                           = var.tags

  vpc_config {
    subnet_ids         = var.subnet_ids
    security_group_ids = var.security_group_ids
  }

  environment {
    variables = var.lambda_env
  }
}

resource "aws_cloudwatch_log_group" "lambda_loggroup" {
  name              = "/aws/lambda/${var.function_name}"
  retention_in_days = 3
  depends_on        = [aws_lambda_function.lambda_function]
}

resource "aws_cloudwatch_log_subscription_filter" "eedy_log_stream" {
  count           = var.datadog_log_subscription_arn != "" ? 1 : 0
  name            = "eedy-log-stream-${var.function_name}"
  destination_arn = var.datadog_log_subscription_arn
  log_group_name  = aws_cloudwatch_log_group.lambda_loggroup.name
  filter_pattern  = var.log_subscription_filter
  depends_on      = [aws_lambda_function.lambda_function]
}