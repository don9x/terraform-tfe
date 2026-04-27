terraform {
  required_version = "1.14.9"

  cloud {
    
    organization = "don-org02"

    workspaces {
      name = "terraform-tfe"
    }
  }
}