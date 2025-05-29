terraform {
  cloud {
    organization = "Donhadley-DevOps-Training"

    workspaces {
      name = "aws-infra-workspace"
    }
  }
}