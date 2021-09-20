# terraform-aws-ecs
The repo demo the terraform codes required to build nodejs application with CI/CD pipeline on AWS.

## run terraform manually
instead of passing variable with `-var `, update your variables and credentials in the file `terraform.tfvars` before hit `terraform apply`

## run with CI/CD
This terraform deployment can be run with CI/CD which will automatically do `init`, `fmt`, `vaildate`, `plan` and `apply`.  see the CI jobs in `.gitlab-ci.yml` file.  The `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY` are stored as protected varibles in this repository.  You will need to create or update yours own in "settings > CI/CD > variables".

## destroy resources
At your local machine where you cloned this repository.
```
$ cd terraform-aws-ecs\
$ terraform state pull
$ terraform destroy
```
