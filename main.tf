##Create VPC
module "vpc" {
  source               = "./module/vpc"
  project-name         = var.project-name
  vpc_cidr             = var.vpc_cidr
}

##Create NAT GAteway
module "nat-gw" {
  source                 = "./module/nat-gw"
  project-name           = module.vpc.project-name
  private-route-table-id = module.vpc.private-route-table-id
  igw = module.vpc.igw
  public-subnets-ids     = [module.vpc.public-subnets-ids[0]]
}

##Create EC2 instances 
module "ec2" {
  source                 = "./module/ec2"
  public-subnets-ids     = module.vpc.public-subnets-ids[*]
  private-subnets-ids    = module.vpc.private-subnets-ids[*]
  region                 = var.region
}

 ##Create SGS
module "sg" {
  source = "./module/sg"
  vpc-id = module.vpc.vpc-id.id
} 

##Create ALB
module "alb" {
  source             = "./module/alb"
  project-name       = module.vpc.project-name
  public-subnets-ids = module.vpc.public-subnets-ids[*]
  vpc-id             = module.vpc.vpc-id.id
  alb-sg-id          = module.sg.alb-sg-id
}

##Create RDS
module "rds" {
  source = "./module/rds"
  project-name = module.vpc.project-name
  username             = var.username
  password             = var.password
  private-sg-id = module.sg.private-sg-id
  private-subnets-ids = module.vpc.private-subnets-ids
}

terraform {
  backend "s3" {
    bucket = "cedric-test-ade"
    key    = "terraform.tfstate"
    region = "us-west-1"
    access_key =  ${{ secret.SECRET_KEY }}
    secret_key =  ${{ secret.SECRET_ACCESS_KEY }}
}
