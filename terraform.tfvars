# vsphere credentials
vsphere_user           = "administrator@vsphere.local"
vsphere_password       = "root1456987@A"
vsphere_server         = "192.168.243.25"
allow_unverified_ssl   = true

# Datacenter, Datastore, Cluster, Network, Template, and VM config
datacenter_name        = "Datacenter1"
datastore_name         = "datastore1"
cluster_name           = "Cluster1"
network_name           = "VM Network"
template_name          = "Ubuntu_Template"
vm_name                = "New Test VM"
num_cpus               = 2
memory                 = 3096

# VM customization options
hostname               = "Tester"
domain                 = "local"
ipv4_address           = "192.168.243.69"
ipv4_netmask           = 24
ipv4_gateway           = "192.168.243.2"
dns_server_list        = ["192.168.243.2", "8.8.8.8"]
