module "sandbox-1" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "stratus.projects.aws+lz-sec-tooling@gmail.com"
    AccountName               = "sec-tooling"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "stratus.projects.aws+lz-sec-tooling-sso@gmail.com"
    SSOUserFirstName          = "Sec"
    SSOUserLastName           = "Tooling"
  }

  account_tags = {
    "Created by" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "David L"
    change_reason       = "Check to see if other CT OUs can be targeted"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
