module "cloud_apic" {
    /*The source of the child module*/
    source = "./cloudapic_deploy"
    /*Name of the ACI Fabric*/
    cloudapic_fabric_name = "CLOUD-ACI-PVT"
    /*Which AZ that you are going to deploy your Cloud APIC*/
    cloudapic_az = "us-east-1a"
    /*The type of the instance that will be used to deploy the Cloud APIC. Accepted Values are [m4.2xlarge/m5.2xlarge]*/
    cloudapic_instance_type  = "m5.2xlarge"
    /*Which CIDR will have access to your Cloud APIC.*/
    cloudapic_allowed_extnet = "0.0.0.0/0"
    /*Just create a plain text file and write your own password(Should contain 8 Characters or more, Atleast 1 letter,
     number and special character @$!%*#?&) and save it , you can use any name or folder.*/
    cloudapic_password = "./cloudapic_deploy/cloudapic_credentials/cloudapic_password"
    /*This module creates an SSH key on the cloudapic_deploy/cloudapic_credentials folder, this is the name of this SSH Key on AWS.*/
    cloudapic_ssh_key = "cloudapic"
}