variable "pscloud_env"                {}
variable "pscloud_company"            {}

variable "pscloud_encrypted"          { default = false }
variable "pscloud_kms_key_arn"        { default = "" }

variable "pscloud_sec_gr_ids"         {}
variable "pscloud_subnets_ids"        {}
variable "pscloud_purpose"            {}
variable "pscloud_project"            {}

variable "pscloud_lifecycle_policy"   { default = "AFTER_30_DAYS" }
