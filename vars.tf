variable "pscloud_env"                {}
variable "pscloud_company"            {}

variable "pscloud_encrypted"          { default = false }
variable "pscloud_kms_key_arn"        { default = "" }
variable "pscloud_performance_mode"   { default = "generalPurpose" } //maxIO
variable "pscloud_throughput_mode"    { default = "bursting" }  //provisioned. When using provisioned, also set provisioned_throughput_in_mibps.
variable "pscloud_throughput_mibps"   { default = 0 } //2-1024

variable "pscloud_sec_gr_ids"         {}
variable "pscloud_subnets_ids"        {}
variable "pscloud_purpose"            {}
variable "pscloud_project"            {}

variable "pscloud_lifecycle_policy"   { default = "AFTER_30_DAYS" }
