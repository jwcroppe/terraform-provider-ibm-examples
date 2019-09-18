provider "ibm" {
    version          = ">= 0.17.4"
    ibmcloud_api_key = "${var.ibmcloud_api_key}"
    region           = "${var.ibmcloud_region}"
}
