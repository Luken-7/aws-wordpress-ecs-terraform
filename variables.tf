variable "region" {
  description = "AWS Region"
  default     = "eu-west-1"
}

variable "vpc_cidr_block" {
  description = "VPC network"
  default     = "10.1.0.0/16"
}

variable "public_subnet_cidr_block" {
  description = "Public Subnet"
  default     = "10.1.1.0/24"
}

variable "private_subnet_cidr_block" {
  description = "Private Subnet"
  default     = "10.1.2.0/24"
}

variable "availability_zone_1" {
  description = "Availability Zones"
  default     = "eu-west-1a"
}

variable "availability_zone_2" {
  description = "Availability Zones"
  default     = "eu-west-1b"
}

variable "availability_zone_3" {
  description = "Availability Zones"
  default     = "eu-west-1c"
}


variable "ecs_cluster_name" {
  description = "ECS cluster Name"
  default     = "ecs"
}

variable "ecs_instance_role" {
  default =  "ecsInstanceRole"
}

variable "amis" {
  description = "ECS Container Instances AMIs"
  default = {
    eu-west-1      = "ami-9c9819ef"
  }
}

variable "instance_type" {
  description = "EC2 instance type"
  default = "t2.micro"
}

variable "db_instance_type" {
  description = "RDS instance type"
  default = "db.t2.micro"
}

variable "db_name" {
  description = "RDS DB name"
  default = "wpdb"
}

variable "db_user" {
  description = "RDS DB username"
  default = "ecs"
}

variable "db_password" {
  description = "RDS DB password"
  default = "Password123!"
}

variable "wp_title" {
  description = "Wordpress title"
  default = "My Wordpress on Elastic Container Service"
}

variable "wp_user" {
  description = "Wordpress username"
  default = "admin"
}

variable "wp_password" {
  description = "Wordpress password"
  default = "Password123!"
}

variable "wp_mail" {
  description = "Wordpress email"
  default = "john.doe@gmail.com"
}