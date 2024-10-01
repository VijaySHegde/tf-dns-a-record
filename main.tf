resource "mtv_dns_a_record" "eventstore_cluster_new_records" {
 # depends_on = var.custom_depends_on
  count      = var.virtual_machine_count
  ip_address = var.virtual_machine_nic_private_ip_address[count.index]
  fqdn       = "${replace(var.es_cluster_name, "_", "-")}.var.domain_name"
  ttl        = var.ttl
}

resource "mtv_dns_a_record" "eventstore_cluster_new_nodes_records" {
  #depends_on = var.custom_depends_on
  count      = var.virtual_machine_count
  ip_address = var.virtual_machine_nic_private_ip_address[count.index]
  fqdn       = "${replace(var.es_cluster_name, "_", "-")}-node${count.index+1}.var.domain_name"
  ttl        = var.ttl
}
