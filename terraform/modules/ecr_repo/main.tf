resource "aws_ecr_repository" "ecr_repo" {
  name = var.repository_name

  image_tag_mutability = var.image_tag_mutability
  image_scanning_configuration {
    scan_on_push = var.scan_on_push
  }

  tags = var.tags
}

resource "aws_ecr_lifecycle_policy" "ecr_lifecycle_policy" {
  count      = var.enable_lifecycle_policy ? 1 : 0
  repository = aws_ecr_repository.ecr_repo.name

  policy = <<POLICY
{
  "rules": [
    {
      "rulePriority": 1,
      "description": "Expire untagged images older than ${var.lifecycle_policy_days} days",
      "selection": {
        "tagStatus": "untagged",
        "countType": "sinceImagePushed",
        "countUnit": "days",
        "countNumber": ${var.lifecycle_policy_days}
      },
      "action": {
        "type": "expire"
      }
    }
  ]
}
POLICY
}