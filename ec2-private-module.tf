module "ec2_private" {
  source             = "./modules/ec2-private"
  env                = var.env
  instance_type      = "t2.micro"
  private_subnet_ids = module.vpc.private_subnet_ids
  vpc_id             = module.vpc.vpc_id
  instance_keypair   = "terraform-key"

  depends_on = [module.vpc]
}
