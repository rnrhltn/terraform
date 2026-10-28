data "aws_ssm_parameter" "al2023_ami" {
  name = "/aws/service/ami-amazon-linux-latest/al2023-ami-kernel-default-x86_64"
}

data "aws_vpc" "default" {
  default = true
}

data "aws_subnets" "default" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.default.id]
  }
}

module "ec2" {
  source = "./modules/ec2"

  ami_id        = data.aws_ssm_parameter.al2023_ami.value
  aws_region    = var.aws_region
  environment   = var.environment
  project       = var.project
  instance_type = var.instance_type
  vpc_id        = data.aws_vpc.default.id
  subnet_id     = data.aws_subnets.default.ids[0]
}