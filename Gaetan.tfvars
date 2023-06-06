# Create a file Gaetan.tfvars to carry the code for values that are inter-changeables
# Enter all the values of variables that need to be changed specifically to your project

region   = "us-east-1"
cblock   = "192.168.0.0/16"
vpc_name = "module_project_vpc"

sg_name       = "module_project_sg"
key_name      = "module_project_key_NVA"
ami           = "ami-0393ee318b08f4511"
instance_type = "t2.micro"
Name          = "Module-Terraform-EC2-instance"