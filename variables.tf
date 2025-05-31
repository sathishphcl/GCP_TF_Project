variable "project_id" {
    description = "The GCP project ID"
    type        = string
}

variable "credentials_file" {
  description = "Path to the GCP service account credentials JSON file"
  type        = string
}

variable "region" {
    description = "The GCP region"
    type        = string
}

variable "vpc_name" {
    description = "The name of the VPC network"
    type        = string
}

variable "subnets" {
    description = "List of subnet configurations"
    type = list(object({
        name          = string
        ip_cidr_range = string
        region        = string
    }))
}

