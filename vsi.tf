resource "ibm_is_instance" "vsi01" {
  auto_delete_volume = true
  boot_volume {
    name = "vsi01-boot-volume"
  }
  image = "r006-2ab9b47b-b13e-4d68-ae91-98124d7fc217"
  keys = [data.ibm_is_ssh_key.sshkey.id]
  name = "${ibm_is_vpc.vpc.name}-is-instance-01"
  primary_network_interface {
    name = "eth0"
    subnet = ibm_is_subnet.vpc_subnet_default_1.id
    security_groups = [ibm_is_security_group.vpc_security_group_default.id]
  }
  profile = "gx2-16x128x2v100"
  resource_group = data.ibm_resource_group.default.id
  tags = ["schematics"]
  vpc = ibm_is_vpc.vpc.id
  zone = local.zone_1
}

resource "ibm_is_floating_ip" "vsi-fip" {
  name = "${ibm_is_vpc.vpc.name}-is-instance-01-fip"
  resource_group = data.ibm_resource_group.default.id
  tags = ["schematics"]
  target = ibm_is_instance.vsi01.primary_network_interface[0].id
  zone = local.zone_1
}
