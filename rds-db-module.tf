module "rds" {
  source             = "./modules/rds-db"
  db_name              = "mydb"
  db_username          = "majam"
  db_password          = var.db_password
  instance_class       = "db.t2.micro"
  subnet_group_name    = "my-subnet-group"
  private_subnet_ids   = module.vpc.private_subnet_ids
  env                  = var.env
  vpc_id               = module.vpc.vpc_id
  parameter_group_name = "my-parameter-group"

  depends_on = [module.vpc]
}
