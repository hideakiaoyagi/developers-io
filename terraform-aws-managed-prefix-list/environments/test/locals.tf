locals {
  prefix_lists = {
    onpremises = {
      name = "onpremises"
      max = 3
      entries = [
        {
          cidr        = "172.16.0.0/16",
          description = "Tokyo Office",
        },
        {
          cidr        = "172.18.0.0/16",
          description = "Osaka Office",
        },
        {
          cidr        = "10.128.0.0/16",
          description = "Yokohama DC",
        },
      ]
    }
    administrators = {
      name = "administrators"
      max = 3
      entries = [
        {
          cidr        = "172.16.1.11/32",
          description = "Nakamoto PC",
        },
        {
          cidr        = "172.16.2.22/32",
          description = "Mizuno PC",
        },
        {
          cidr        = "172.18.1.33/32",
          description = "Kikuchi PC",
        },
      ]
    }
  }
}