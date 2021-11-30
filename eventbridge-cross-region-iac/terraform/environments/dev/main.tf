# EventBridge (Receiver; ap-northeast-1 only)

module "eventbridge_receiver" {
  source = "../../modules/eventbridge_receiver"
  region = "ap-northeast-1"
  sys    = local.system_name
  env    = local.environment_name.dev
}


# EventBridge (Sender)

module "eventbridge_sender_us-east-1" {
  source              = "../../modules/eventbridge_sender"
  region              = "us-east-1"
  sys                 = local.system_name
  env                 = local.environment_name.dev
  target_eventbus_arn = module.eventbridge_receiver.eventbridge_eventbus_arn
  iam_role_arn        = module.eventbridge_receiver.iam_role_arn
}

module "eventbridge_sender_us-east-2" {
  source              = "../../modules/eventbridge_sender"
  region              = "us-east-2"
  sys                 = local.system_name
  env                 = local.environment_name.dev
  target_eventbus_arn = module.eventbridge_receiver.eventbridge_eventbus_arn
  iam_role_arn        = module.eventbridge_receiver.iam_role_arn
}

module "eventbridge_sender_us-west-1" {
  source              = "../../modules/eventbridge_sender"
  region              = "us-west-1"
  sys                 = local.system_name
  env                 = local.environment_name.dev
  target_eventbus_arn = module.eventbridge_receiver.eventbridge_eventbus_arn
  iam_role_arn        = module.eventbridge_receiver.iam_role_arn
}

module "eventbridge_sender_us-west-2" {
  source              = "../../modules/eventbridge_sender"
  region              = "us-west-2"
  sys                 = local.system_name
  env                 = local.environment_name.dev
  target_eventbus_arn = module.eventbridge_receiver.eventbridge_eventbus_arn
  iam_role_arn        = module.eventbridge_receiver.iam_role_arn
}

module "eventbridge_sender_ap-south-1" {
  source              = "../../modules/eventbridge_sender"
  region              = "ap-south-1"
  sys                 = local.system_name
  env                 = local.environment_name.dev
  target_eventbus_arn = module.eventbridge_receiver.eventbridge_eventbus_arn
  iam_role_arn        = module.eventbridge_receiver.iam_role_arn
}

module "eventbridge_sender_ap-northeast-3" {
  source              = "../../modules/eventbridge_sender"
  region              = "ap-northeast-3"
  sys                 = local.system_name
  env                 = local.environment_name.dev
  target_eventbus_arn = module.eventbridge_receiver.eventbridge_eventbus_arn
  iam_role_arn        = module.eventbridge_receiver.iam_role_arn
}

module "eventbridge_sender_ap-northeast-2" {
  source              = "../../modules/eventbridge_sender"
  region              = "ap-northeast-2"
  sys                 = local.system_name
  env                 = local.environment_name.dev
  target_eventbus_arn = module.eventbridge_receiver.eventbridge_eventbus_arn
  iam_role_arn        = module.eventbridge_receiver.iam_role_arn
}

module "eventbridge_sender_ap-southeast-1" {
  source              = "../../modules/eventbridge_sender"
  region              = "ap-southeast-1"
  sys                 = local.system_name
  env                 = local.environment_name.dev
  target_eventbus_arn = module.eventbridge_receiver.eventbridge_eventbus_arn
  iam_role_arn        = module.eventbridge_receiver.iam_role_arn
}

module "eventbridge_sender_ap-southeast-2" {
  source              = "../../modules/eventbridge_sender"
  region              = "ap-southeast-2"
  sys                 = local.system_name
  env                 = local.environment_name.dev
  target_eventbus_arn = module.eventbridge_receiver.eventbridge_eventbus_arn
  iam_role_arn        = module.eventbridge_receiver.iam_role_arn
}

module "eventbridge_sender_ap-northeast-1" {
  source              = "../../modules/eventbridge_sender"
  region              = "ap-northeast-1"
  sys                 = local.system_name
  env                 = local.environment_name.dev
  target_eventbus_arn = module.eventbridge_receiver.eventbridge_eventbus_arn
  iam_role_arn        = module.eventbridge_receiver.iam_role_arn
}

module "eventbridge_sender_ca-central-1" {
  source              = "../../modules/eventbridge_sender"
  region              = "ca-central-1"
  sys                 = local.system_name
  env                 = local.environment_name.dev
  target_eventbus_arn = module.eventbridge_receiver.eventbridge_eventbus_arn
  iam_role_arn        = module.eventbridge_receiver.iam_role_arn
}

module "eventbridge_sender_eu-central-1" {
  source              = "../../modules/eventbridge_sender"
  region              = "eu-central-1"
  sys                 = local.system_name
  env                 = local.environment_name.dev
  target_eventbus_arn = module.eventbridge_receiver.eventbridge_eventbus_arn
  iam_role_arn        = module.eventbridge_receiver.iam_role_arn
}

module "eventbridge_sender_eu-west-1" {
  source              = "../../modules/eventbridge_sender"
  region              = "eu-west-1"
  sys                 = local.system_name
  env                 = local.environment_name.dev
  target_eventbus_arn = module.eventbridge_receiver.eventbridge_eventbus_arn
  iam_role_arn        = module.eventbridge_receiver.iam_role_arn
}

module "eventbridge_sender_eu-west-2" {
  source              = "../../modules/eventbridge_sender"
  region              = "eu-west-2"
  sys                 = local.system_name
  env                 = local.environment_name.dev
  target_eventbus_arn = module.eventbridge_receiver.eventbridge_eventbus_arn
  iam_role_arn        = module.eventbridge_receiver.iam_role_arn
}

module "eventbridge_sender_eu-west-3" {
  source              = "../../modules/eventbridge_sender"
  region              = "eu-west-3"
  sys                 = local.system_name
  env                 = local.environment_name.dev
  target_eventbus_arn = module.eventbridge_receiver.eventbridge_eventbus_arn
  iam_role_arn        = module.eventbridge_receiver.iam_role_arn
}

module "eventbridge_sender_eu-north-1" {
  source              = "../../modules/eventbridge_sender"
  region              = "eu-north-1"
  sys                 = local.system_name
  env                 = local.environment_name.dev
  target_eventbus_arn = module.eventbridge_receiver.eventbridge_eventbus_arn
  iam_role_arn        = module.eventbridge_receiver.iam_role_arn
}

module "eventbridge_sender_sa-east-1" {
  source              = "../../modules/eventbridge_sender"
  region              = "sa-east-1"
  sys                 = local.system_name
  env                 = local.environment_name.dev
  target_eventbus_arn = module.eventbridge_receiver.eventbridge_eventbus_arn
  iam_role_arn        = module.eventbridge_receiver.iam_role_arn
}
