# Copyright Amazon.com, Inc. or its affiliates. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#
module "sandbox_account_02" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "jdptechnc+2025july-aft-sandbox02-account@gmail.com"
    AccountName  = "sandbox-account-02"
    # Syntax for top-level OU
    ManagedOrganizationalUnit = "Sandbox"
    # Syntax for nested OU
    # ManagedOrganizationalUnit = "Sandbox (ou-xfe5-a8hb8ml8)"
    SSOUserEmail     = "jdptechnc+2025july-aws-aft@gmail.com"
    SSOUserFirstName = "Jared"
    SSOUserLastName  = "Priddy"
  }

  account_tags = {
    "ABC:Owner"       = "jdptechnc+2025july-aws-aft@gmail.com"
    "ABC:Division"    = "ENT"
    "ABC:Environment" = "Dev"
    "ABC:CostCenter"  = "123456"
    "ABC:Vended"      = "true"
    "ABC:DivCode"     = "102"
    "ABC:BUCode"      = "ABC003"
    "ABC:Project"     = "123456"
  }

  change_management_parameters = {
    change_requested_by = "jdptechnc"
    change_reason       = "second test account"
  }

  custom_fields = {
    environment = "sandbox"
    custom2 = "b"
  }

  # account_customizations_name = "sandbox-customizations"
}
