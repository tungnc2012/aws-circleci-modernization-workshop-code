variable "availability_zones" {
  type        = list(string)
  description = "AWS Availability Zones"
  default = [
    "ap-southeast-1a",
    "ap-southeast-1b",
    "ap-southeast-1c",
    "",
  ]
}

variable "key_pair" {
  description = "AWS EC2 Key Pair Pem"
  default     = "tomcat"
}

variable "ami" {
  description = "Amazon Linux 2 AMI"
  default     = "ami-049f20cccc294bb90"
}

variable "instance_type" {
  description = "AWS ARM GravitonInstance Type"
  default     = "t4g.medium"
}

variable "iam_profile" {
  description = "Name of AWS IAM Profile"
  default     = "ec2ECSRole"
}

variable "asg_min" {
  description = "Min Instances"
  default     = 3
}

variable "asg_max" {
  description = "Max Instances"
  default     = 5
}

variable "asg_desired" {
  description = "AWS Desired capacity for ASG"
  default     = 3
}

variable "docker_img_name" {
  type        = string
  description = "Name of the docker image being deployed"
  default     = "ariv3ra/aws-circleci-modernization-workshop-code"
}

variable "docker_img_tag" {
  type        = string
  description = "The docker image TAG being deployed"
  default     = "latest"
}

variable "ecs_desired_count" {
  description = "Number of desired ECS Tasks to deploy"
  default     = 3
}

