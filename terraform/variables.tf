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
variable "github_repository" {
  description = "GitHub repo allowed to deploy, as owner/name"
  type        = string
  default     = "ejayefe/devops-challenge1-rep1"
}

variable "github_branch" {
  description = "Branch allowed to assume the deploy role"
  type        = string
  default     = "gitops"
}
variable "github_owner_id" {
  description = "Numeric GitHub ID of the repo owner (from the OIDC token subject)"
  type        = string
  default     = "5231335"
}

variable "github_repository_id" {
  description = "Numeric GitHub ID of the repo (from the OIDC token subject)"
  type        = string
  default     = "1419890451"
}
