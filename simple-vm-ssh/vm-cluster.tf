variable "vpc_name" {
    description = "Denotes the name of the VPC to create"
    default     = "demo-vpc"
}

variable "subnet_name" {
    description = "Denotes the name of the subnet to create"
    default     = "demo-subnet"
}

variable "vm_name" {
    description = "Denotes the name of the VM to create"
    default     = "demo-vm"
}

variable "image_id" {
    description = "Denotes which operating system image to boot"
    # Default is an Ubuntu 16.04 image
    default     = "cfdaf1a0-5350-4350-fcbc-97173b510843"
}

variable "profile_id" {
    description = "Denotes the VM profile to boot"
    # Default is 2 vcpus with 8 GB of memory
    default     = "bc1-2x8"
}

variable "network_port_speed" {
    description = "Denotes the VM's primary NIC speed"
    default     = "100"
}

variable "public_key_id" {
    description = "Denotes the ID of the public key to use"
}

variable "floating_ip_name" {
    description = "Denotes the name of the floating IP for the VM"
    default     = "demo-fip"
}

#################################################
##               End of variables              ##
#################################################

resource "ibm_is_vpc" "vpc" {
    name = "${var.vpc_name}"
}

resource "ibm_is_subnet" "subnet" {
    name            = "${var.subnet_name}"
    vpc             = "${ibm_is_vpc.vpc.id}"
    zone            = "${var.ibmcloud_region}"
    ipv4_cidr_block = "10.240.0.0/24"
}

resource "ibm_is_instance" "vm" {
    name    = "${var.vm_name}"
    image   = "${var.image_id}"
    profile = "${var.profile_id}"

    primary_network_interface = {
        port_speed = "${var.network_port_speed}"
        subnet     = "${ibm_is_subnet.subnet.id}"
    }

    network_interfaces = {
        name       = "eth1"
        subnet     = "${ibm_is_subnet.subnet.id}"
    }

    vpc  = "${ibm_is_vpc.vpc.id}"
    zone = "${var.ibmcloud_zone}"
    keys = ["${var.public_key_id}"]

    timeouts {
        create = "90m"
        delete = "30m"
    }
}

resource "ibm_is_floating_ip" "fip1" {
    name   = "${var.floating_ip_name}"
    target = "${ibm_is_instance.vm.primary_network_interface.0.id}"
}

resource "ibm_is_security_group_rule" "sg1-tcp-rule" {
    depends_on = ["ibm_is_floating_ip.fip1"]
    group      = "${ibm_is_vpc.vpc.default_security_group}"
    direction  = "ingress"
    remote     = "0.0.0.0/0"

    tcp = {
        port_min = 22
        port_max = 22
    }
}
