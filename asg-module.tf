module "asg" {
  source             = "./modules/asg"
  instance_type      = "t2.micro"
  private_subnet_ids = module.vpc.private_subnet_ids
  instance_keypair   = "terraform-key"
  ec2_private_sg_ids = module.ec2_private.ec2_private_sg_ids

  depends_on = [module.vpc, module.ec2_private]
}
