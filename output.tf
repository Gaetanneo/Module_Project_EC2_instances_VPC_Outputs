# Create a file output.tf to carry out the code that will provision a desired output as needed for your project
# (You can list the ec2-ip, the dns-name, the vpc-id, all the public-subnets, the key-pair used and any useful output you might need)
#( For the sake of the project, let's stick with all the 3 outputs we had on our main.tf code when begining this project in class)


#output code 
output "ec2_ip" {
  value = aws_instance.server.public_ip
}

output "dns_name" {
  value = aws_instance.server.public_dns
}

output "vpc_id" {
  value = module.vpc.vpc_id
}