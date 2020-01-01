output "pscloud_efs_mount_target" {
  value = [aws_efs_mount_target.pscloud-efs-mount-target.*.dns_name]
}
