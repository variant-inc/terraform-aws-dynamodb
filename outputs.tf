output "dynamo_db_table" {
  description = "Dynamo db table object"
  value       = aws_dynamodb_table.table
}

output "dynamo_db_table_arn" {
  description = "Dynamo db table arn"
  value       = aws_dynamodb_table.table.arn
}

output "dynamo_db_policy" {
  description = "AWS dynamo db actions policy"
  value       = data.aws_iam_policy_document.dynamodb_policy
}
