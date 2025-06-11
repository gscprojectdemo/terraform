data "aws_key_pair" "example" {
  key_name           = "mykey"
  include_public_key = true
}

output "fingerprint" {
  value = data.aws_key_pair.example.fingerprint
}

output "name" {
  value = data.aws_key_pair.example.key_name
}

output "id" {
  value = data.aws_key_pair.example.id
}
resource "aws_instance" "app_server1" {
  ami           = var.imageid
  key_name = data.aws_key_pair.example.key_name
  instance_type = var.instancetype
  subnet_id  = var.subnetid
  tags = {
    Name = "test"
  }
}