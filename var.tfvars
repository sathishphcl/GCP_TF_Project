credentials_file = "credsfile/sa-tf-v2teksol-creds.json"
project_id    = "total-amp-461506-v3"
region        = "us-central1"

/*
# Map of locations (key-value pair)
location = {
    apac = "eastasia"
    emea = "northeurope"
    amer = "eastus"
}
*/

vpc_name      = "vpc-v2teksol"

subnets = [
  {
    name          = "mgmt-subnet"
    ip_cidr_range = "10.0.1.0/24"
    region        = "us-central1"
  },
  {
    name          = "dmz-subnet"
    ip_cidr_range = "10.0.2.0/24"
    region        = "us-central1"
  },
  {
    name          = "vdi-subnet"
    ip_cidr_range = "10.0.3.0/24"
    region        = "us-central1"
    }

]
