module "vpc" {
  source               = "../project-8-Modules-setup/module/vpcmodule"
  cidr                 = var.cidr
  enable_dns_hostnames = var.enable_dns_hostnames
  enable_dns_support   = var.enable_dns_support
  vpc_name             = var.vpc_name
}

module "public_subnet_1" {
  source               = "../project-8-Modules-setup/module/subnet_modules"
  vpc_id               = module.vpcmodule.vpc.id
  public_subnet_cidr_1 = var.public_subnet_cidr_1
  availability_zone    = data.aws_availability_zones.available_1.names[0]
  public_subnet_tag_1 = var.public_subnet_tag_1
}

module "public_subnet_2" {
  source = "../project-8-Modules-setup/module/subnet_modules"
  # vpc_id               = module.vpc.vpc_id
  public_subnet_cidr_2 = var.public_subnet_cidr_2
  # availability_zone    = data.aws_availability_zones.available_1.names[1]
  public_subnet_tag_2 = var.public_subnet_tag_2
}

module "database_subnet_1" {
  source = "../project-8-Modules-setup/module/subnet_modules"
  #vpc_id                 = module.vpc.vpc_id
  database_subnet_cidr_1 = var.database_subnet_cidr_1
  #availability_zone      = data.aws_availability_zones.available_1.names[2]
  database_subnet_tag_1 = var.database_subnet_tag_1
}

module "database_subnet_2" {
  source = "../project-8-Modules-setup/module/subnet_modules"
  #vpc_id                 = module.vpc.vpc_id
  database_subnet_cidr_2 = var.database_subnet_cidr_2
  #availability_zone      = data.aws_availability_zones.available_1.names[3]
  database_subnet_tag_2 = var.database_subnet_tag_2
}



