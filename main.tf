terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "~> 0.40.0" 
    }
  }
}
provider "snowflake" {
  account  = "bvctlal-jh24732" 
  username = "BHARU2003"
  password = "Bharu@2003"
  role     = "ACCOUNTADMIN"  
}

# Users Creation
variable "users" {
  type = map(object({
    password           = string
    default_warehouse  = string
    default_role       = string
    default_namespace  = string
  }))
  default = {
    "user1" = {
      password          = "User1StrongPassword!"
      default_warehouse = "WH1"
      default_role      = "ANALYST"
      default_namespace = "DB1.SCHEMA1"
    },
    "user2" = {
      password          = "User2StrongPassword!"
      default_warehouse = "WH2"
      default_role      = "DEVELOPER"
      default_namespace = "DB2.SCHEMA2"
    }
  }
}

resource "snowflake_user" "users" {
  for_each = var.users

  name             = each.key
  login_name       = each.key
  password         = each.value.password
  default_warehouse = each.value.default_warehouse
  default_role      = each.value.default_role
  default_namespace = each.value.default_namespace
}
