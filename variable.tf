# create list variable
variable "user_names" {
  type    = list(string)
  default = ["markstewarduser1", "markstewarduser2", "markstewarduser3"]
}