output "pscloud_efs_mount_target" {
  value = aws_efs_file_system.pscloud-efs.dns_name
}
