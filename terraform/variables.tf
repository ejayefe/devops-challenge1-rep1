variable "aws_region" {
  description = "AWS region to deploy into"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Name used to prefix/namespace resources"
  type        = string
  default     = "devops-challenge1-rep1"
}
