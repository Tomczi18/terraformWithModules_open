# AWS 3 Tier Architecture (AWS3TA)
Repository contains the terraform project of 3TA. 

### Project structure:

```
terraformWithModules
│   alb-module.tf
│   asg-module.tf
│   ec2-bastion-module.tf
│   ec2-private-module.tf
│   rds-db-module.tf
│   variables.tf
│   versions.tf
│   vpc-module.tf
│
├───modules
│   ├───alb
│   │       alb.tf
│   │       alb_target_groups.tf
│   │       aws_listeners.tf
│   │       outputs.tf
│   │       variables.tf
│   │
│   ├───asg
│   │       ami-datasource.tf
│   │       asg-notification.tf
│   │       asg-scheduled.tf
│   │       asg-ttsp.tf
│   │       asg.tf
│   │       launch-template.tf
│   │       outputs.tf
│   │       variables.tf
│   │
│   ├───ec2-bastion
│   │       ami-datasource.tf
│   │       ec2-instance.tf
│   │       ec2_bastion_sg.tf
│   │       outputs.tf
│   │       variables.tf
│   │
│   ├───ec2-private
│   │       ami-datasource.tf
│   │       ec2-instance.tf
│   │       ec2_private_sg.tf
│   │       outputs.tf
│   │       variables.tf
│   │
│   ├───rds-db
│   │       outputs.tf
│   │       rds-instance.tf
│   │       rds-parameter-group.tf
│   │       rds-sg.tf
│   │       rds-subnet-group.tf
│   │       variables.tf
│   │
│   └───vpc
│           igw.tf
│           natgw.tf
│           outputs.tf
│           routetb.tf
│           subnets.tf
│           variables.tf
│           vpc.tf
│
└───private-key
        terraform-key.pem
        terraform-key.ppk
```


Infrastructure was created based on following modules from repository [TerragruntModules](https://github.com/Tomczi18/terragruntModules) :
* [Virtual Private Cloud VPC](https://github.com/Tomczi18/terragruntModules/tree/main/vpc)
* [Relational Database Service (RDS)](https://github.com/Tomczi18/terragruntModules/tree/main/rds-db)
* [Bastion Host (EC2)](https://github.com/Tomczi18/terragruntModules/tree/main/ec2-bastion)
* [Private EC2 instances](https://github.com/Tomczi18/terragruntModules/tree/main/ec2-private)
* [Auto Scaling Groups (ASG)](https://github.com/Tomczi18/terragruntModules/tree/main/asg)
* [Application Load Balancer (ALB)](https://github.com/Tomczi18/terragruntModules/tree/main/alb)

### AWS3TA Infrastructure Schema

![Image1](aws_whole.png)
