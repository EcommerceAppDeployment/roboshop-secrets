variable "secrets_mount"  {
    default = {
        roboshop-dev = {
            description = "secrets for roboshop-dev"
        }
    }
}
variable "secrets" {
    default = {
        cart = {
            secrets_mount = "roboshop-dev"
            kv            = {
                REDIS_HOST          = "redis-dev.sdevops.shop"
                CATALOGUE_HOST      = "catalogue-dev.sdevops.shop"
                CATALOGUE_PORT      = 8080
            }
        }

    }
}