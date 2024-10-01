# Number of virtual machines
variable "virtual_machine_count" {
  type        = number
  description = "The number of virtual machines (DNS records to create)"
}

# List of IP addresses for the VMs
variable "virtual_machine_nic_private_ip_address" {
  type        = list(string)
  description = "The list of private IP addresses of the VMs"
}

# EventStoreDB cluster name
variable "es_cluster_name" {
  type        = string
  description = "The name of the Elasticsearch cluster, used to create the FQDN"
}

# TTL for the DNS records
variable "ttl" {
  type        = number
  description = "The TTL value for the DNS records"
  default     = 1200
}
