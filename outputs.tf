output "ami_id" {
  description = "AMI Ubuntu selecionada pelo data source."
  value       = local.selected_ami_id
}

output "instance_id" {
  description = "ID da instancia EC2 provisionada."
  value       = aws_instance.app_server.id
}

output "instance_type" {
  description = "Tipo da instancia EC2 provisionada."
  value       = aws_instance.app_server.instance_type
}
