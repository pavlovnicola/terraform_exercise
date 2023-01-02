locals {
  vpc_cidr = "10.181.242.0/24"
}

locals {
  security_groups = {
    public = {
      name        = "public_sg"
      description = "Security group for Public Access"
      ingress = {
        http = {
          from        = 80
          to          = 80
          protocol    = "tcp"
          cidr_blocks = [var.access_ip, local.vpc_cidr]
        }
      }
    }
  }
}
