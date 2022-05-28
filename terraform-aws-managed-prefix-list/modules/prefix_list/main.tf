resource "aws_ec2_managed_prefix_list" "main" {
  name = "${var.name}-prefix-list"

  address_family = "IPv4"
  max_entries    = var.max

  dynamic "entry" {
    for_each = var.entries
    content {
      cidr        = entry.value["cidr"]
      description = entry.value["description"]
    }
  }

  tags = {
    Name = "${var.name}-prefix-list"
  }
}