
resource "aws_instance" "app_server1" {
  ami           = var.imageid
  instance_type = var.instancetype
  subnet_id  = var.subnetid
  tags = {
    Name = "test"
  }
}