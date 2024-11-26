variable "repository_name" {
  description = "The name of the ECR repository"
  type        = string
}

variable "image_tag_mutability" {
  description = "The tag mutability setting for the repository (MUTABLE or IMMUTABLE)"
  type        = string
  default     = "MUTABLE"
}

variable "scan_on_push" {
  description = "Whether to enable image scanning on push"
  type        = bool
  default     = true
}

variable "enable_lifecycle_policy" {
  description = "Whether to enable a lifecycle policy for the repository"
  type        = bool
  default     = true
}

variable "lifecycle_policy_days" {
  description = "The number of days to retain untagged images in the repository"
  type        = number
  default     = 30
}

variable "tags" {
  description = "A map of tags to apply to the repository"
  type        = map(string)
  default     = {}
}