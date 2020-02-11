////////// path 1

provider "aws" {
  region = "ap-southeast-1"
  access_key = ""
  secret_key = ""
}

resource "aws_instance" "tf1" {
  ami = "ami-0a9f38b8bf7ad9bcb"
  instance_type = "t2.nano"
}

////////// path 2

//provider "aws" {
//  region = var.region
//  access_key = var.accessKey
//  secret_key = var.secretKey
//}

//resource "aws_instance" "tf2" {
//  ami = lookup(var.amis, var.region)
//  instance_type = "t2.nano"
//}

////////// path 3

//provider "aws" {
//  region = var.region
//  access_key = var.accessKey
//  secret_key = var.secretKey
//}

//resource "aws_instance" "tf2" {
//  ami = lookup(var.amis, var.region)
//  instance_type = "t2.nano"
//  key_name = aws_key_pair.quang-macbook-pro.key_name
//
//  provisioner "file" {
//    source = "script.sh"
//    destination = "/tmp/script.sh"
//  }
//
//  provisioner "remote-exec" {
//    inline = [
//      "chmod +x /tmp/script.sh",
//      "sudo /tmp/script.sh"
//    ]
//  }
//
//  connection {
//    user = var.instanceUsername
//    private_key = var.privateKeyPath
//  }
//}
//
//resource "aws_key_pair" "quang-macbook-pro" {
//  key_name = "quang-macbook-pro"
//  public_key = file(var.publicKeyPath)
//}