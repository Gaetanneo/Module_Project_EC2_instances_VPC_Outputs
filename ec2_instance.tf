# Create a file ec2_instance.tf to carry the code that will lunch the EC2 instance along with all the other ressources.

# create the ec2 instance
resource "aws_instance" "server" {
  ami                         = var.ami
  instance_type               = var.instance_type
  key_name                    = aws_key_pair.ec2_key.key_name
  vpc_security_group_ids      = [aws_security_group.sg.id]
  subnet_id                   = module.vpc.public_subnets[0]
  associate_public_ip_address = true

  tags = {
    Name       = "Module-Terraform-EC2-instance"
    Env        = "Utrains_Best_IT_School"
    team       = "Group10"
    created-by = "Gaetan"
  }
}