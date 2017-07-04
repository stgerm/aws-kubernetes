variable "aws_region" {
    description = "Region where Cloud Formation is created"
    default     = "eu-central-1"
}

variable "cluster_name" {
    description = "Name of the AWS Minikube cluster - will be used to name all created resources"
}

variable "tags" {
    description = "Tags used for the AWS resources created by this template"
    type        = "map"
}

variable "tags2" {
    description = "Tags in format used for the AWS Autoscaling Group"
    type        = "list"
}

variable "addons" {
    description = "list of YAML files with Kubernetes addons which should be installed"
    type        = "list"
}

variable "aws_instance_type" {
    description = "Type of instance"
    default     = "t2.medium"
}

variable "aws_subnet_id" {
    description = "The subnet-id to be used for the instance"
}

variable "ssh_public_key" {
    description = "Path to the pulic part of SSH key which should be used for the instance"
    default = "~/.ssh/id_rsa.pub"
}

variable "hosted_zone" {
    description = "Hosted zone to be used for the alias"
}

variable "hosted_zone_private" {
    description = "Is the hosted zone public or private"
    default = false
}

variable ssh_access_cidr {
  description = "Adresses from which SSH access is allowed"
  type = "list"
  default = [
    "0.0.0.0/0"
  ]
}

variable api_access_cidr {
  description = "CIDR from which API access is allowed"
  type = "list"
  default = [
    "0.0.0.0/0"
  ]
}