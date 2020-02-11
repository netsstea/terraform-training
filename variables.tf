////////// path 1
variable "string1" {
  default = "string 1"
  type = string
}

variable "number1" {
  default = "number 1"
  type = number
}

variable "boolean1" {
  default = "Boolean 1"
  type = bool
}

variable "list1" {
  type = "list"
  default = [1,2,3]
}

variable "map1" {
  type = "map"
  default = { "key1": "value1" }
}

variable "docker_ports" {
  type = list(object({
    internal = number
    external = number
    protocol = string
  }))
  default = [
    {
      internal = 8300
      external = 8300
      protocol = "tcp"
    }
  ]
}

////////// path 2
//
//variable "accessKey" {}
//
//variable "secretKey" {}
//
//variable "region" {
//  type = string
//  default = "ap-southeast-1"
//}
//
//variable "amis" {
//  type = "map"
//  default = {
//    ap-southeast-1 = "ami-0a9f38b8bf7ad9bcb",
//    ap-south-1	 = "ami-54d2a63b"
//  }
//}

////////// path 3

//variable "publicKeyPath" {
//  default = "/Users/quang/.ssh/terraform.pub"
//}
//
//variable "privateKeyPath" {
//  default = "/Users/quang/.ssh/terraform"
//}
//
//variable "instanceUsername" {
//  default = "ubuntu"
//}

