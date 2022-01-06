resource "ibm_is_security_group" "vpc_security_group_default" {
  name = "sg-${ibm_is_vpc.vpc.name}"
  resource_group = data.ibm_resource_group.default.id
  tags = ["schematics"]
  vpc = ibm_is_vpc.vpc.id
}

resource "ibm_is_security_group_rule" "vpc_security_group_rule_inbound_all" {
  direction = "inbound"
  group = ibm_is_security_group.vpc_security_group_default.id
}

resource "ibm_is_security_group_rule" "vpc_security_group_rule_outbound_all" {
  direction = "outbound"
  group = ibm_is_security_group.vpc_security_group_default.id
}
