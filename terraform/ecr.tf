resource "aws_ecr_repository" "strapi" {
  name                 = "strapi-app"
  force_delete         = true
  image_tag_mutability = "MUTABLE"
}