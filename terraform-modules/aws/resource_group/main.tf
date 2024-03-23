resource "aws_resourcegroups_group" "resource_group" {
  name = var.name
  resource_query {
    query = <<JSON
    {
    "ResourceTypeFilters": [
        "AWS::EC2::Instance"
    ],
    "TagFilters": [
        {
        "Key": "Development",
        "Values": ["Dev"]
        }
    ]
    }
    JSON
  }
}