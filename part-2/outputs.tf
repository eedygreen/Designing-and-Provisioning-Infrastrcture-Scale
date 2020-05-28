# TODO: Define the output variable for the lambda function.

output "lambda_arn" {
  value = aws_lambda_function.lambda_function.arn
}

output "lambda_function_name" {
  value = aws_lambda_function.lambda_function.function_name
}

output "lambda_iam_role_name" {
  value = aws_iam_role.iam_for_lambda.name
}

output "lambda_invoke_arn" {
  value = aws_lambda_function.lambda_function.invoke_arn
}