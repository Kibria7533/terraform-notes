resource "aws_key_pair" "deployer" {
  key_name   = "key_pair_from_tf"
  public_key = ""
}


output "name" {
  value = aws_key_pair.deployer.key_name
}
