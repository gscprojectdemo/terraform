
resource "aws_instance" "app_server1" {
  ami           = "ami-0f535a71b34f2d44a"
  instance_type = "t2.micro"

  tags = {
    Name = "test"
  }
}