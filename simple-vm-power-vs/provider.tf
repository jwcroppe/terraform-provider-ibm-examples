provider "ibm" {
    # Temporary hack to force WIP Terraform provider to be used
    version          = ">= 0.17.1, <= 0.17.1"
    ibmcloud_api_key = "${var.ibmcloud_api_key}"
    region           = "${var.ibmcloud_region}"
}
