variable "aws_region" {
  description = "AWS region to deploy resources in"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Project name used as a prefix for resource names"
  type        = string
  default     = "portfolio"
}

variable "environment" {
  description = "Deployment environment (e.g. dev, staging, prod)"
  type        = string
  default     = "dev"
}

# VPC
variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  description = "CIDR blocks for public subnets (one per AZ)"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnet_cidrs" {
  description = "CIDR blocks for private subnets (one per AZ, used by Aurora)"
  type        = list(string)
  default     = ["10.0.11.0/24", "10.0.12.0/24"]
}

# EC2
variable "ami_id" {
  description = "AMI ID for the EC2 instance. Defaults to empty string which causes the latest Amazon Linux 2023 AMI to be looked up automatically."
  type        = string
  default     = ""
}

variable "instance_type" {
  description = "EC2 instance type (free-tier eligible)"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "Name of an existing EC2 key pair for SSH access (leave empty to skip)"
  type        = string
  default     = ""
}

# ALB / HTTPS
variable "ssh_cidr_blocks" {
  description = "CIDR blocks allowed to SSH into the EC2 instance. Defaults to an empty list (no SSH access). Set to your IP, e.g. [\"1.2.3.4/32\"]."
  type        = list(string)
  default     = []
}
  description = "ACM certificate ARN for the HTTPS listener (leave empty to skip HTTPS)"
  type        = string
  default     = ""
}

# Aurora PostgreSQL
variable "db_name" {
  description = "Initial database name"
  type        = string
  default     = "portfolio"
}

variable "db_username" {
  description = "Master username for the Aurora cluster"
  type        = string
  default     = "dbadmin"
  sensitive   = true
}

variable "db_password" {
  description = "Master password for the Aurora cluster"
  type        = string
  sensitive   = true
}

variable "db_instance_class" {
  description = "Aurora DB instance class"
  type        = string
  default     = "db.t3.medium"
}
