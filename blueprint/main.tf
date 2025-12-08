

terraform {

  backend "remote" {
    organization = "csinfocommpvtltd"

module "classifier_users" {
  source = "./modules/users"
}

module "classifier_queues" {
  source                   = "./modules/queues"
  classifier_queue_names   = ["401K", "IRA", "ROTH", "529","GeneralSupport", "HSA"]
  classifier_queue_members = module.classifier_users.user_ids
}
