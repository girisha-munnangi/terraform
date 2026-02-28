variable "fruits" {
    type = list(string)
    default = ["apple", "banana","apple","orange"]
}

variable "fruits_set" {
    type = set(string)
    default = ["apple","banana","apple","orange"]
}