#Create a file key_pair.tf to create a key pair that will be used to access our ec2-instance and save it locally 

# Generate a secure key using a rsa algorithm
resource "tls_private_key" "ec2_key" {
  algorithm = "RSA"
  rsa_bits  = 2048
}

# creating the keypair in aws
resource "aws_key_pair" "ec2_key" {
  key_name   = "var.key_name"
  public_key = tls_private_key.ec2_key.public_key_openssh
}

# Save the .pem file locally for remote connection
resource "local_file" "ssh_key" {
  filename = "module_project_key_NVA.pem"
  content  = tls_private_key.ec2_key.private_key_pem
}