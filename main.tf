resource "aws_efs_file_system" "pscloud-efs" {
  encrypted             = var.pscloud_encrypted
  kms_key_id            = var.pscloud_kms_key_arn

  performance_mode      = var.pscloud_performance_mode

  throughput_mode                   = var.pscloud_throughput_mode
  provisioned_throughput_in_mibps   = var.pscloud_throughput_mibps


lifecycle_policy {
    transition_to_ia = var.pscloud_lifecycle_policy
  }

  tags = {
    Name = "${var.pscloud_company}_nfs_for_${var.pscloud_purpose}_${var.pscloud_env}"
    Project = var.pscloud_project
  }
}

resource "aws_efs_mount_target" "pscloud-efs-mount-target" {
  count = length(var.pscloud_subnets_ids)

  file_system_id  = aws_efs_file_system.pscloud-efs.id
  subnet_id       = element(var.pscloud_subnets_ids, count.index).id
  security_groups = var.pscloud_sec_gr_ids
}

