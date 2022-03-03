resource "aws_instance" "web" {
  ami             = "ami-0e7a875609d14906f"
  instance_type   = "t2.micro"
  key_name        = aws_key_pair.deployer.key_name
  vpc_security_group_ids = ["${aws_security_group.allow_tls.id}"]
  tags = {
    Name = "my_first_ec2_from_tf"
  }
}