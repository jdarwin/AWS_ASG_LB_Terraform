# define public key
variable "public_key" {
  default = "tests.pub"
}
# define private key
variable "private_key" {
  default = "tests.pem"
}
# define key name for connection
variable "key_name" {
  default     = "ci-vprofile-key"
  description = "Name of AWS key pair"
}
# define CIDR block for VPC
variable "vpc_cidr" {
  default = "10.0.0.0/16"
}
#define CIDR block for subnet
variable "subnet_cidr" {
  default = "10.0.1.0/24"
}
#define CIDR block for subnet 2
variable "subnet1_cidr" {
  default = "10.0.2.0/24"
}
