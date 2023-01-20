module "rabbitmq" {
  source = "../.."

  broker_name            = "app-dev-mq"
  subnet_ids             = ["subnet-08b19374efcede225"]
  security_groups        = ["sg-asff234adasdd"]
  username               = "user-terraform"
  password               = "password@#$23da"
  engine_version         = "3.8.27"
  vpc_id                 = "vpc-046effd7e14742653"
  deployment_mode        = "SINGLE_INSTANCE"
  host_instance_type     = "mq.t3.micro"
  create_security_group  = true
  enable_cloudwatch_logs = false
}
