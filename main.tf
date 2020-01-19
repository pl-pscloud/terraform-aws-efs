resource "aws_efs_file_system" "pscloud-efs" {

  lifecycle_policy {
    transition_to_ia = var.pscloud_lifecycle_policy
  }

  tags = {
    Name = "${var.pscloud_company}_nfs_for_${var.pscloud_purpose}_${var.pscloud_env}"
  }
}

resource "aws_efs_mount_target" "pscloud-efs-mount-target" {
  count = length(var.pscloud_subnets_ids)

  file_system_id  = aws_efs_file_system.pscloud-efs.id
  subnet_id       = element(var.pscloud_subnets_ids, count.index).id
  security_groups = var.pscloud_sec_gr_ids
}

