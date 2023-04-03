#Terraform Introduction
    Provider.tf : Defines the provider to be used and the credentials to access the provider.
    config.tf : Used to connect to S3 Bucket and upload the necessary files to S3 Bucket.
    network.tf : Used to define all the netwrok resources like VPC, SUBNET and NETWORK_INTERFACE.
    variables.tf : Used to define all the variables that is to be used in terraform files.
    prod.tfvaes : Assign values to production variables.
    dev.tfvars : Assign values to development variables.
    storgae.tf : Used to create volumes in EC2 instance.
    instance.tf : Used to create the instance with the defined AMI and instance_type
# Terraform Commands
    1) terraform init : It initializes a working directory containing Terraform configuration files. 
    2) terraform plan : It lets us preview the actions Terraform would take to modify your infrastructure.
    3) terraform apply : It is used to deploy your infrastructure.
    4) terraform apply -var-file : "var.tfvars" : used to apply changes while using variables from the .tfvars file
