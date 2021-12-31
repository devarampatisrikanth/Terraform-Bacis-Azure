variable "location" {
    type = string
}
variable "resourcegroupname" {
  type = string
}
variable "tags" {
  type = map(any)  
}

variable "vnetname" {
  type = string
}
variable "subnetname" {
  type = string
}
variable "ipaddressname"{
  type = string
}
variable "nsgname"{
  type = string
}
variable "nicname"{
  type = string
}
variable "storagename"{
  type = string
}
variable "vmname"{
  type = string
}
