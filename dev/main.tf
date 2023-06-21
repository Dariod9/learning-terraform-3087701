variable "AWS_SECRET_ACCESS_KEY"{
    type = string
    description = "aws key"
}

module "dev" {
    source = "../modules/blog"
    AWS_SECRET_ACCESS_KEY = "E6Vy4yi9TcER2OXV1wjtEm05Ovp2tln6AoQxRkEn"
}