variable "instances" {
type = list
default = ["mongodb","redis","mysql","rabbitmq","catalogue","cart","user","shipping","payment","frontend"]

}

variable "zone_id" {
    type = string
    default = "Z07285551FQZIZ26CYO03"
}

variable "domain_name" {
    type = string
    default = "girisha.online"
}

