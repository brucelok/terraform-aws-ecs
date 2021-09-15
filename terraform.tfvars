aws_region        = "ap-southeast-2"
aws_access_key    = "your_key"
aws_secret_key    = "your_key"
aws_key_pair_name = "your_key"

availability_zones = ["ap-southeast-2a", "ap-southeast-2b"]
public_subnets     = ["10.10.101.0/24", "10.10.102.0/24"]
private_subnets    = ["10.10.201.0/24", "10.10.202.0/24"]

app_name        = "nodejs-helloworld"
app_environment = "dev"

database_name     = "nodejs-db"
database_password = "strongPassword"
