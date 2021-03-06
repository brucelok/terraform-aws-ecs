# these credentials are defined in Gitlab CI/CD settings as env vars
#aws_access_key    = "your_key"
#aws_secret_key    = "your_key"

aws_region        = "ap-southeast-2"
aws_key_pair_name = "BRUCEs-MacBook-Pro"
availability_zones = ["ap-southeast-2a", "ap-southeast-2b"]
public_subnets     = ["10.10.101.0/24", "10.10.102.0/24"]
private_subnets    = ["10.10.201.0/24", "10.10.202.0/24"]

app_name        = "mkdocs"
app_environment = "dev"
docker_image = "registry.gitlab.com/lok.bruce/mkdocs:latest"
database_name     = "mkdocs-db"
database_password = "strongPassword"
