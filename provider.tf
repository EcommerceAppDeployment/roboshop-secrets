provider "vault" {
    address = "https://vault_p-internal.sdevops.shop:8200"
    skip_tls_verify = true
    token  = var.token
}
# add the s3 bucket tool
terraform {
    backend "s3" {
        bucket = "sri-terraform-bucket" 
        key    = "vault/terraform.tfstate"
        region = "us-east-1" 
    }
}