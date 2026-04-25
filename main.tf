module "security_group" {
  source    = "./modules/security_group"
  sg_config = var.sg_config
  tags      = var.tags
  project   = var.proyecto
  account   = var.cuenta
  vpc_id    = var.vpc_id
}

module "iam" {
  source     = "./modules/iam"
  ec2_config = var.ec2_config
  project    = var.proyecto
  account    = var.cuenta
}

module "ec2" {
  source                = "./modules/ec2"
  security_group_ids    = module.security_group.security_group_ids
  iam_instance_profiles = module.iam.instance_profile_names
  ec2_config            = var.ec2_config
  key_name              = var.key_name
  private_key_path      = var.private_key_path
  tags                  = var.tags
}