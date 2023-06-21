variable "AWS_SECRET_ACCESS_KEY"{
    type = string
    description = "aws key"
}

variable "AWS_ACCESS_KEY_ID"{
    type = string
    description = "aws key ID"
}

module "qa" {
    source = "../modules/blog"

    AWS_SECRET_ACCESS_KEY = XXXXXXXXXXXX
    
    environment = {
        name = "qa"
        network_prefix = "10.1"
    }

    min_size = 1
    max_size = 1
}
