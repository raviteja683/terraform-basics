#declaring a variable
variable "sample" {
  default = "hello ravi"
}
#printing a variable
output "op" {
   value = var.sample
}
output "ops" {
  value = "my first terraform message is ${var.sample}"
}

variable "number" {
  default = 18
}
#printing a variable
output "op_number" {
   value = "default value is ${var.number}"
}

#print list variable
variable "list_variable" {
  default = [
    "ravi",
    27,
    "SSE",
    "Acc"

  ]
}
output "print_List" {
    value= "resource name is ${var.list_variable[0]} and role is ${var.list_variable[2}} "
  
}