variable "AWS_SECRET_ACCESS_KEY"{
    type = string
    description = "aws key"
}

module "dev" {
    source = "../modules/blog"
}