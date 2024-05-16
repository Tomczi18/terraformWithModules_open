module "ec2_bastion" {
  source             = "./modules/ec2-bastion"
  env                   = var.env
  instance_type         = "t2.micro"
  ec2_bastion_subnet_id = module.vpc.public_subnet_ids[0]
  vpc_id                = module.vpc.vpc_id
  instance_keypair      = "terraform-key"

  depends_on = [module.vpc]
}
