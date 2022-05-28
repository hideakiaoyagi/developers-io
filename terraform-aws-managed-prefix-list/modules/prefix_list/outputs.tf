output "prefix_list_id" {
  value       = aws_ec2_managed_prefix_list.main.id
  description = "Resource ID of Managed Prefix List"
}