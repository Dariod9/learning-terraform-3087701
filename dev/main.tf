module "dev" {
    source = "../modules/blog"
}

variable "AWS_SECRET_ACCESS_KEY"{
    type = string
    description = "aws key"
}