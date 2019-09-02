output "VM external IP address" {
    value = "${ibm_is_floating_ip.fip1.address}"
}