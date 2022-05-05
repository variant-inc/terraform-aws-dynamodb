# terraform-aws-dynamodb
Module to create dynamo db table

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | <4.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | <4.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_dynamodb_table.table](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/dynamodb_table) | resource |
| [aws_iam_policy_document.dynamodb_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_attributes"></a> [attributes](#input\_attributes) | List of nested attribute definitions. Only required for hash\_key and range\_key attributes. Each attribute has two properties: name - (Required) The name of the attribute, type - (Required) Attribute type, which must be a scalar type: S, N, or B for (S)tring, (N)umber or (B)inary data | `list(object({ name = string, type = string }))` | `null` | no |
| <a name="input_billing_mode"></a> [billing\_mode](#input\_billing\_mode) | (Optional) Controls how you are charged for read and write throughput and how you manage capacity. The valid values are PROVISIONED and PAY\_PER\_REQUEST. | `string` | `"PAY_PER_REQUEST"` | no |
| <a name="input_global_secondary_indexes"></a> [global\_secondary\_indexes](#input\_global\_secondary\_indexes) | GSI for the table; subject to the normal limits on the number of GSIs, projected attributes, etc. Maximum of 5 global secondary indexes can be defined for the table | `any` | `null` | no |
| <a name="input_hash_key"></a> [hash\_key](#input\_hash\_key) | The attribute to use as the hash (partition) key. Must also be defined as an attribute | `string` | n/a | yes |
| <a name="input_local_secondary_indexes"></a> [local\_secondary\_indexes](#input\_local\_secondary\_indexes) | LSI on the table; these can only be allocated at creation so you cannot change this definition after you have created the resource, maximum of 5 global secondary indexes can be defined for the table | `any` | `null` | no |
| <a name="input_range_key"></a> [range\_key](#input\_range\_key) | The attribute to use as the range (sort) key. Must also be defined as an attribute | `string` | `null` | no |
| <a name="input_read_capacity"></a> [read\_capacity](#input\_read\_capacity) | (Optional) The number of read units for this table. If the billing\_mode is PROVISIONED, this field is required. | `number` | `2` | no |
| <a name="input_table_name"></a> [table\_name](#input\_table\_name) | Name of the DynamoDB table | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | A mapping of tags to assign to dynamo db table | `map(string)` | `{}` | no |
| <a name="input_write_capacity"></a> [write\_capacity](#input\_write\_capacity) | (Optional) The number of write units for this table. If the billing\_mode is PROVISIONED, this field is required. | `number` | `2` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_dynamo_db_policy"></a> [dynamo\_db\_policy](#output\_dynamo\_db\_policy) | AWS dynamo db actions policy |
| <a name="output_dynamo_db_table"></a> [dynamo\_db\_table](#output\_dynamo\_db\_table) | Dynamo db table object |
| <a name="output_dynamo_db_table_arn"></a> [dynamo\_db\_table\_arn](#output\_dynamo\_db\_table\_arn) | Dynamo db table arn |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
