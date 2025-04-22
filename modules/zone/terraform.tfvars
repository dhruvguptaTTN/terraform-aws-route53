createZone = true

zones = {
  demo-zone = {
    domain_name      = "internal.demorun.local"
    comment          = "Internal hosted zone for Demorun"
    force_destroy    = false
    delegation_set_id = null
    vpc = [
      {
        vpc_id     = "vpc-09aceeb53e4bd8994"    # replace with your actual VPC ID
        vpc_region = "us-east-2"
      }
    ]
    tags = {
      Environment = "nonprod"
      Owner       = "dhruv"
    }
  }
}

tags = {
  Project = "tf-basic"
  ManagedBy = "Terraform"
}
