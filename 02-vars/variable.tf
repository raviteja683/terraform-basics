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
    value= "resource name is ${var.list_variable[0]} and role is ${var.list_variable[2]}"
}

#declaring map variable
variable "map_variable" {
  default = {
    name="ravi"
    age=27
    role="SSE"
    company="Acc"
  }
}
output "print_map" {
    value= "resource name is ${var.map_variable["name"]} and age is ${var.map_variable["age"]}"
}

#declaring empty variable and get the value from terraform.tfvars or *.tfvars file
variable "city" {
}
output "print_city" {
    value= "city name is ${var.city}"
}

variable "state" {
}
output "print_state" {
    value= "state name is ${var.state}"
}

# by default variable value get collected from terraform.tfvars and *.tfvars need to call explicity 
#terraform plan -var-file=explicity_var.tfvars
#terraform apply -auto-approve -var-file=explicity_var.tfvars 

variable "country" {
}
output "print_country" {
    value= "country name is ${var.country}"
}

# command line variable
# terraform apply -var-file=explicity_var.tfvars -var states_count=28
variable "states_count" {
}
output "print_states_count" {
    value= "India state count is ${var.states_count}"
}

#shell variable declaration
variable "shell_variale" {
}

output "shell_variale_op" {
  value = "shell variable value is: ${shell_variale}"
}