module "vpc" {
  source          = "./vpc"
  access_ip       = var.access_ip
  vpc_cidr        = local.vpc_cidr
  security_groups = local.security_groups
}

module "ec2" {
  source        = "./ec2"
  instance_type = var.instance_type
  ami_id        = var.ami_id
  public_sg     = module.vpc.public_sg
  public_subnet = module.vpc.public_subnet_01
}

module "nlb" {
  source    = "./nlb"
  vpc_id    = module.vpc.vpc_id
  target_id = module.ec2.ec2_id
  subnets   = [module.vpc.public_subnet_01, module.vpc.public_subnet_02]
}

