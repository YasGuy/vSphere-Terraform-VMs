# vsphere credentials
variable "vsphere_user" {
  description = "vSphere username"
  type        = string
}

variable "vsphere_password" {
  description = "vSphere password"
  type        = string
  sensitive   = true
}

variable "vsphere_server" {
  description = "vSphere server IP or hostname"
  type        = string
}

variable "allow_unverified_ssl" {
  description = "Disable SSL verification if true"
  type        = bool
  default     = true
}

# Datacenter, Datastore, Cluster, Network, Template, and VM config
variable "datacenter_name" {
  description = "Name of the vSphere datacenter"
  type        = string
}

variable "datastore_name" {
  description = "Name of the datastore"
  type        = string
}

variable "cluster_name" {
  description = "Name of the compute cluster"
  type        = string
}

variable "network_name" {
  description = "Name of the network"
  type        = string
}

variable "template_name" {
  description = "Name of the VM template"
  type        = string
}

variable "vm_name" {
  description = "Name of the virtual machine"
  type        = string
}

variable "num_cpus" {
  description = "Number of CPUs for the VM"
  type        = number
  default     = 2
}

variable "memory" {
  description = "Memory size for the VM in MB"
  type        = number
  default     = 3096
}

# VM customization options
variable "hostname" {
  description = "Hostname for the VM"
  type        = string
}

variable "domain" {
  description = "Domain for the VM"
  type        = string
  default     = "local"
}

variable "ipv4_address" {
  description = "IPv4 address for the VM"
  type        = string
}

variable "ipv4_netmask" {
  description = "Netmask for the VM"
  type        = number
  default     = 24
}

variable "ipv4_gateway" {
  description = "Gateway for the VM"
  type        = string
}

variable "dns_server_list" {
  description = "List of DNS servers"
  type        = list(string)
  default     = ["8.8.8.8"]
}
