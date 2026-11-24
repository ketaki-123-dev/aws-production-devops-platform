resource "aws_ecr_repository" "ecr_repo" {
  name                 = "aws-devops-demo"
  image_tag_mutability = "IMMUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }

  encryption_configuration {
    encryption_type = "AES256"

  }

  tags = {
    Name        = "aws-devops-demo"
    Environment = "dev"
    ManagedBy   = "Terraform"
  }
}