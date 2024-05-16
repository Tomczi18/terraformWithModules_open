variable "aws_region" {
    description = "Region in which AWS Resources to be created"
    type = string
    default = "eu-central-1"
}

variable "env" {
  description = "Environment Variable used as a prefix"
  type = string
  default = "dev"
}

variable "db_password" {
  description = "AWS RDS Database Administrator Password"
  type        = string
  sensitive   = true
}