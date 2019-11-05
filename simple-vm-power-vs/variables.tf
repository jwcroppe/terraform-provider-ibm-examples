variable "ibmcloud_api_key" {
    description = "Denotes the IBM Cloud API key to use"
}

variable "ibmcloud_region" {
    description = "Denotes which IBM Cloud region to connect to"
    default     = "us-south"
}

variable "vm_name" {
    description = "Name of the VM"
    default     = "demo-VM"
}

variable "vm_private_key_base64" {
    description = "The base64-encoded form of the private key used to make SSH connections to the VM"
    default     = "LS0tLS1CRUdJTiBPUEVOU1NIIFBSSVZBVEUgS0VZLS0tLS0KYjNCbGJuTnphQzFyWlhrdGRqRUFBQUFBQkc1dmJtVUFBQUFFYm05dVpRQUFBQUFBQUFBQkFBQUJGd0FBQUFkemMyZ3RjbgpOaEFBQUFBd0VBQVFBQUFRRUF2ZytURFpGY2JUR2ltOUZMaHRUSkFkWWpZZTFhMjlKZnhlUnNsMWQrb1hkR05hS21QbWdWCkgwcXdEeDFYdWxxWXVzM0ZJQzNtam1hWmQ2YXRiNWliSVVEQW1uUnpjb3JSYURaS1dsWkNDMlZDS0dyUXROUE1ZaTQza0UKTEdGVmkvd0tZYUltUmlaR2tsakFKYmFKN3E4K0tlM2lWYXl4Q0JEeGE2QjhTdFRzZk9wYnRNYytKZjd3VzNUUUNwWXNLNAp5ODg5UXdzMUJCSmk0S3pMSTJBS05PTHlXa0Rnam1PcTV0bTA2blloeWdGMi8yVkIyak5jWlo2RzhETXB4S0ZyakV1SFBwCkxLVU5pcEhjMWY3ZGRWTlVCY2pUWnVXT2hIZHhPTFJEcHhTazA1NDR4cHdPOXlTUWUxRDFuV3kyOHJKNWYyTEZBTDU2eWcKaDBySS9XRm9sd0FBQTlBdUZHSC9MaFJoL3dBQUFBZHpjMmd0Y25OaEFBQUJBUUMrRDVNTmtWeHRNYUtiMFV1RzFNa0IxaQpOaDdWcmIwbC9GNUd5WFYzNmhkMFkxb3FZK2FCVWZTckFQSFZlNldwaTZ6Y1VnTGVhT1pwbDNwcTF2bUpzaFFNQ2FkSE55Cml0Rm9Oa3BhVmtJTFpVSW9hdEMwMDh4aUxqZVFRc1lWV0wvQXBob2laR0prYVNXTUFsdG9udXJ6NHA3ZUpWckxFSUVQRnIKb0h4SzFPeDg2bHUweHo0bC92QmJkTkFLbGl3cmpMenoxREN6VUVFbUxnck1zallBbzA0dkphUU9DT1k2cm0yYlRxZGlISwpBWGIvWlVIYU0xeGxub2J3TXluRW9XdU1TNGMra3NwUTJLa2R6Vi90MTFVMVFGeU5ObTVZNkVkM0U0dEVPbkZLVFRuampHCm5BNzNKSkI3VVBXZGJMYnlzbmwvWXNVQXZucktDSFNzajlZV2lYQUFBQUF3RUFBUUFBQVFBZjRoajNJN1Z2ays0RldaemoKNTNvNDFxVmszaDVwMWVhL0djeWxyc1hOYkdiWXhJcEMyYzhCU3RReUZPZ01tUG9hREQ3UFlTUFdLNXYvR0hUcnpadm9maQpaUlFzdkRJVXB6d3ZmQ0k4bzhneVlRQmFzeFNuNTAwZS84UVZkZGFWL3hmMnZPN1N3Y1VBOCtaMzdTRkNheDl3aFRsOHlkCldBMXViSStVa2dmSXVTMTRDbW42STFSUlBrZGZwdjVJN1ZlNktwVWZMeXBSUmoxR05JUkxvWjRBRTFLZ2YzcDNneGlkZ1IKbFBGVW1mRmV4R0Izc0tFUFFTSEdURHVnZTdMODlkNG5QcG9xdUYxZjNEa3hJODZ4NWt0TEpOTHRZQkVna0hUYTh0SHkrTQpUeHo2eG5PMTZlUWlHdGQ1NE83RWNEZHBCUDlsdzJpTGc2cnJibjlpV243QkFBQUFnUUNyR0dzRHhnVC9ob2E3VVBjWFhJCmdNU2V1MHc2TktIZ1Iyci9jR1dSekR5b2E3dk53eHFQQU9BbGJid2xtUzRURW9JTGFFeXprTFB4Tm1EOUx2OVQwNkpIWjgKY3Q3ODJiS2NlQUh2eGRiYlpobEVmRnNKOTN5R25mMGI0YXFKb0FqOFhPdHZyaTdIT2Qrc3d5cFFRVEljUThabXFsQ2w0VwpxVzc3UFZRSmROaGdBQUFJRUEraGVEajVpcG5kQ2tPWFp4aVFhalJGZmdjLzVZQTJIWWhOYk93NmV3ayt1UTR6ckdtK0EyCkkxTXMyRUNOM0ZzcVA1aXpUWS9JSjhLNllmM1hXcDFGYndkZnVGYUdlamlreGk3aWZBbFFzaDVDeE55RVpMUVZrQkFtR2UKbFpIY0hMMEE1cWxJR3hwZDZIV0VhOFZubFFPcjNqNzB5ei9SM3djT0NETzQ1UkZpY0FBQUNCQU1LTkFuWFNxemdGMHZocQpDbHEzQ2JEcHk5L29RQWtuUkJtampsVzMveWREU0RkZFJsRytaUW9DQWgxQTFGNTZ1aFAyTzNQL29Fc1BCSlYxaDd6MmVICm1ScjR6ZDdieEVVUXlUNWcwYnJranV4a29iSVVTTzR5ZFR4VEhFV3RCbXhkZXlIOFhHNlYxTVRRRXBlUjFIZXRPeVREWHcKV3psVkVmV2xLY0JjejVBUkFBQUFGV3AzWTNKdmNIQmxRR3AzWTNKdmNIQmxMVzFoWXdFQ0F3UUYKLS0tLS1FTkQgT1BFTlNTSCBQUklWQVRFIEtFWS0tLS0tCg=="
}

variable "power_instance_id" {
    description = "Power Virtual Server instance ID associated with your IBM Cloud account (note that this is NOT the API key)"
}

variable "memory" {
    description = "Amount of memory (GB) to be allocated to the VM"
    default     = "4"
}

variable "processors" {
    description = "Number of virtual processors to allocate to the VM"
    default     = "1"
}

variable "proc_type" {
    description = "Processor type for the LPAR - shared/dedicated"
    default     = "shared"
}

variable "ssh_key_name" {
    description = "SSH key name in IBM Cloud to be used for SSH logins"
}

variable "shareable" {
    description = "Should the data volume be shared or not - true/false"
    default     = "true"
}

variable "networks" {
    description = "List of networks that should be attached to the VM"
    default     = ["YOUR_NETWORK_NAME"]
}

variable "system_type" {
    description = "Type of system on which the VM should be created - s922/e880"
    default     = "s922"
}

variable "migratable" {
    description = "Can the VM be migrated - true/false"
    default     = "true"
}

variable "image_name" {
    description = "Name of the image from which the VM should be deployed"
    default     = "7200-03-03"
}

variable "replication_policy" {
    description = "Replication policy of the VM"
    default     = "none"
}

variable "replication_scheme" {
    description = "Replication scheme for the VM"
    default     = "suffix"
}

variable "replicants" {
    description = "Number of VM instances to deploy"
    default     = "1"
}
