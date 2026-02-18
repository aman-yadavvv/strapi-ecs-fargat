output "ecr_repository_url" {
  value = aws_ecr_repository.strapi.repository_url
}

output "ecs_cluster_name" {
  value = aws_ecs_cluster.main.name
}

output "ecs_service_name" {
  value = aws_ecs_service.strapi.name
}

output "strapi_url" {
  value = "http://${aws_ecs_service.strapi.name}.${aws_ecs_cluster.main.name}.local:1337"
}   