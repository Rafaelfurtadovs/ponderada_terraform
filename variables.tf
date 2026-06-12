variable "use_localstack" {
  description = "Define se a execucao sera feita contra o LocalStack/sandbox em vez da AWS real."
  type        = bool
  default     = true
}

variable "localstack_ami_id" {
  description = "AMI ficticia usada pelo LocalStack, que nao possui o catalogo publico de AMIs da AWS."
  type        = string
  default     = "ami-12345678"
}
