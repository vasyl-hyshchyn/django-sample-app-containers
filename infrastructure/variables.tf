variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Project name"
  type        = string
  default     = "healthchecks"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  description = "CIDR blocks for public subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnet_cidrs" {
  description = "CIDR blocks for private subnets"
  type        = list(string)
  default     = ["10.0.11.0/24", "10.0.12.0/24"]
}

variable "container_port" {
  description = "Port exposed by the Django container"
  type        = number
  default     = 8000
}

variable "alb_port" {
  description = "Port exposed by the Application Load Balancer"
  type        = number
  default     = 80
}

variable "health_check_path" {
  description = "HTTP path used for target health checks"
  type        = string
  default     = "/accounts/login/"
}

variable "desired_count" {
  description = "Number of ECS tasks"
  type        = number
  default     = 1
}

variable "container_cpu" {
  description = "ECS task CPU units"
  type        = number
  default     = 256
}

variable "container_memory" {
  description = "ECS task memory in MiB"
  type        = number
  default     = 512
}

variable "container_image" {
  description = "Docker image in ECR"
  type        = string
  default     = "496113530768.dkr.ecr.us-east-1.amazonaws.com/healthchecks-app:latest"
}

variable "db_name" {
  description = "PostgreSQL database name"
  type        = string
  default     = "hc"
}

variable "db_username" {
  description = "PostgreSQL username"
  type        = string
  default     = "hcuser"
}

variable "db_password" {
  description = "PostgreSQL password"
  type        = string
  sensitive   = true
}

variable "db_instance_class" {
  description = "RDS instance class"
  type        = string
  default     = "db.t3.micro"
}

variable "db_allocated_storage" {
  description = "Initial RDS storage in GB"
  type        = number
  default     = 20
}

variable "secret_key" {
  description = "Django secret key"
  type        = string
  sensitive   = true
}

variable "tags" {
  description = "Additional resource tags"
  type        = map(string)
  default     = {}
}