variable "common" {
  description = "Common variables used by all resources"
  type = object({
    global        = bool
    tags          = map(string)
    account_name  = string
    region_prefix = string
  })
}

variable "private_subnets" {
  description = "The private subnet variables"
  type = object({
    private_subnet_name       = string
    private_subnet_cidr_block = list(string)
    az                        = list(string)
  })
}

variable "public_subnets" {
  description = "The public subnet variables"
  type = object({
    public_subnet_name       = string
    public_subnet_cidr_block = list(string)
    az                       = list(string)
  })
}
# variable "subnets" {
#   type = object({
#     private_subnets = object({
#       private_subnet_name       = string
#       private_subnet_cidr_block = list(string)
#       az                        = list(string)
#     })
#     public_subnets = object({
#       public_subnet_name       = string
#       public_subnet_cidr_block = list(string)
#       az                       = list(string)
#     })
#   })
# }


variable "vpc_id" {
  description = "The vpc id"
  type        = string
}
