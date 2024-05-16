module "vpc" {
  source          = "./modules/vpc"
  env             = var.env
  azs             = ["eu-central-1a", "eu-central-1b"]
  private_subnets = ["10.0.0.0/19", "10.0.32.0/19"]
  public_subnets  = ["10.0.64.0/19", "10.0.96.0/19"]

  private_subnet_tags = {
    "tomaj/role/elb"         = 1
    "tomaj/cluster/dev-demo" = "owned"
  }

  public_subnet_tags = {
    "tomaj/role/elb"         = 1
    "tomaj/cluster/dev-demo" = "owned"
  }
}
