module "alb" {
  source             = "./modules/alb"
  vpc_id             = module.vpc.vpc_id
  asg_id             = module.asg.autoscaling_group_id
  ec2_instaces       = module.ec2_private.ec2_private_instance_ids
  ec2_private_sg_ids = module.ec2_private.ec2_private_sg_ids
  public_subnet_ids  = module.vpc.public_subnet_ids

  depends_on = [module.vpc, module.asg, module.ec2_private]
}
