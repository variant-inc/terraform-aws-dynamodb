output "dynamo_db_table" {
  description = "Dynamo db table object"
  value       = module.dynamodb_table
}

output "dynamo_db_table_arn" {
  description = "Dynamo db table arn"
  value       = module.dynamodb_table.dynamo_db_table_arn
}

output "dynamo_db_policy" {
  description = "AWS dynamo db actions policy"
  value       = module.dynamodb_table.dynamo_db_policy
}
