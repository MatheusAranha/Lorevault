variable "project_id" {
  description = "ID do projeto Google Cloud"
  type        = string
}

variable "region" {
  description = "Região onde os recursos serão criados"
  type        = string
  default     = "us-central1"
}

variable "credentials_file" {
  description = "Caminho para o arquivo de credenciais do Google Cloud"
  type        = string
}
