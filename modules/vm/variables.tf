variable "name" {}
variable "machine_type" {}
variable "zone" {}
variable "image" {}
variable "network" {}
variable "metadata" {
  type    = map(string)
  default = {}
}
