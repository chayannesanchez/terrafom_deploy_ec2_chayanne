resource "aws_iam_role" "this" {
  for_each = var.ec2_config

  name = each.value.role_name

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect = "Allow",
        Principal = {
          Service = "ec2.amazonaws.com"
        },
        Action = "sts:AssumeRole"
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ssm" {
  for_each   = var.ec2_config
  role       = aws_iam_role.this[each.key].name
  policy_arn = each.value.policy_arn
}

resource "aws_iam_instance_profile" "this" {
  for_each = var.ec2_config
  name     = "profile-${each.value.role_name}"
  role     = aws_iam_role.this[each.key].name
}