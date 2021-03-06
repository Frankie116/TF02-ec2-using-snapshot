# ---------------------------------------------------------------------------------------------------
# Library: /mygit/frankie116/library/v1.2
# variables used in this project
# ---------------------------------------------------------------------------------------------------

# main.tf -------------------------------------------------------------
variable my-aws-region {
  description           = "AWS region"
  type                  = string
  default               = "eu-west-2"
}


# various ----------------------------------------------------------------
variable my-project-name {
  description           = "Name of the project. Used in resource names and tags."
  type                  = string
  default               = "lab000"
}

variable my-environment {
  description           = "Value of the 'Environment' tag."
  type                  = string
  default               = "dev"
}


# 1a-vpc.tf -------------------------------------------------------------
variable my-vpc-cidr-block {
  description           = "CIDR block for VPC"
  type                  = string
  default               = "10.0.0.0/16"
}

variable my-priv-subnets-per-vpc {
  description           = "Number of private subnets. Maximum of 16."
  type                  = number
  default               = 2
}

variable my-priv-subnet-cidr-blocks {
  description           = "Available cidr blocks for private subnets"
  type                  = list(string)
  default               = [
    "10.0.1.0/24",
    "10.0.2.0/24",
    "10.0.3.0/24",
    "10.0.4.0/24",
    "10.0.5.0/24",
    "10.0.6.0/24",
    "10.0.7.0/24",
    "10.0.8.0/24",
    "10.0.9.0/24",
    "10.0.10.0/24",
    "10.0.11.0/24",
    "10.0.12.0/24",
    "10.0.13.0/24",
    "10.0.14.0/24",
    "10.0.15.0/24",
    "10.0.16.0/24"
  ]
}

variable my-pub-subnets-per-vpc {
  description           = "Number of public subnets. Maximum of 16."
  type                  = number
  default               = 2
}

variable my-pub-subnet-cidr-blocks {
  description           = "Available cidr blocks for public subnets"
  type                  = list(string)
  default               = [
    "10.0.101.0/24",
    "10.0.102.0/24",
    "10.0.103.0/24",
    "10.0.104.0/24",
    "10.0.105.0/24",
    "10.0.106.0/24",
    "10.0.107.0/24",
    "10.0.108.0/24",
    "10.0.109.0/24",
    "10.0.110.0/24",
    "10.0.111.0/24",
    "10.0.112.0/24",
    "10.0.113.0/24",
    "10.0.114.0/24",
    "10.0.115.0/24",
    "10.0.116.0/24"
  ]
}


# 2a-ec2-choose-ami.tf ----------------------------------------------------
variable my-instances-per-subnet {
  description           = "Number of EC2 instances in each private subnet"
  type                  = number
  default               = 1
}

variable use-snapshot {
  description           = "If true, a pre-configured snapshot that is available in the required region will be used"
  type                  = bool
  default               = true
}

variable my-instance-type {
  description           = "Type of EC2 instance to use."
  type                  = string
  default               = "t2.micro"
}

variable my-servername {
    default             = "jenkins"
}


# 3a-eip.tf -------------------------------------------------------------
variable "my-existing-eip" {
    default             = "my-existing-eip"
}


# 9c-template-file.tf ---------------------------------------------------
variable my-scriptfile {
    default             = "scripts/my-script-any.sh"
}


# 6a-route53.tf ---------------------------------------------------------
variable "my-existing-r53-zone" {
    default             = "redacted.com"
}

variable "my-elb-hosted-zone" {
    default             = "ZHREDACTEDK8"
}


















