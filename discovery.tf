resource "aws_service_discovery_public_dns_namespace" "mkdocs" {
  name        = "${var.app_name}.hker.com"
  description = "${var.app_name}.hker.com"
}

resource "aws_service_discovery_service" "fargate" {
  name = "${var.app_name}-sds"

  dns_config {
    namespace_id = aws_service_discovery_public_dns_namespace.mkdocs.id

    dns_records {
      ttl  = 10
      type = "A"
    }
  }

  health_check_config {
    failure_threshold = 10
    type              = "HTTP"
  }
}