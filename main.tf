module "vpc" {
  source       = "./modules/vpc"
  project_name = var.project_name
}

module "ec2" {
  source        = "./modules/ec2"
  project_name  = var.project_name
  subnet_id     = module.vpc.public_subnet_id
  vpc_security_group_ids = [module.vpc.security_group_id]
}
