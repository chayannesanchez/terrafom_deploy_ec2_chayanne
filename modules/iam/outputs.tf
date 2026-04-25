output "instance_profile_names" {
  value = { for k, v in aws_iam_instance_profile.this : k => v.name }
}