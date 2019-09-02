variable "ibmcloud_api_key" {
    description = "Denotes the IBM Cloud API key to use"
}

variable "ibmcloud_generation" {
    description = "Denotes which generation of IBM Cloud to use (1 = classic; 2 = NextGen)"
    default = "1"
}

variable "ibmcloud_region" {
    description = "Denotes which IBM Cloud region to connect to"
    default = "us-south"
}

variable "ibmcloud_zone" {
    description = "Denotes which zone within the IBM Cloud region to create the VM in"
    default = "us-south-1"
}

#################################################
##               End of variables              ##
#################################################

provider "ibm" {
    ibmcloud_api_key = "${var.ibmcloud_api_key}"
    generation       = "${var.ibmcloud_generation}"
    region           = "${var.ibmcloud_region}"
}