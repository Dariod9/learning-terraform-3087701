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

    environment = {
        name = "qa"
        network_prefix = "10.1"
    }

    asg_min_size = 0
    asg_max_size = 0
}