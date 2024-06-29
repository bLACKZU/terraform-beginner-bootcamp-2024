# Terraform Beginner Bootcamp 2023



## Semantic Versioning - :smile:


This project utilises *Semantic Versioning* for its tagging. [semver.org](https://semver.org/)

The general format:

__MAJOR.MINOR.PATCH__, eg:- `1.0.1`

- __MAJOR__ version when you make incompatible API changes
- __MINOR__ version when you add functionality in a backward compatible manner
- __PATCH__ version when you make backward compatible bug fixes

## Terraform Basics

### Terraform Registry

Terraform sources their providers and modules from terraform registry which is located at [registry.terraform.io](https://registry.terraform.io/)

- **PROVIDERS** are an interface to the APIs that would actually create resources in terraform
- **MODULES** are a way to make large pieces of configuration `portable`, `sharable` and `modular`

### Terraform Init

After writing your terraform config files we run `terraform init` which downloads all the binaries of the providers and the modules necessary for the current configuration of our project

### Terraform Directory

Once `terraform init` takes place, the binaries are downloaded inside the `.terraform` directory inside your project

**Not to be pushed** to your VCS

### Terraform Plan

This helps to create a change set of your desired configuration that is going to take place for the infrastructure

### Terraform Apply

The change sets needs to be applied after you are done with your `terraform plan`. `terraform apply` helps to incorporate the change sets to the actual state from the desired state

### Terraform Destroy

This is used to destroy the resources from your infrastructure

### Terraform State file

Single source of truth of a terraform project that keeps track of the actual configuration of your infrastructure

This __should not be pushed__ to your *VCS*. It may contains sensitive data as well

If you lose your state file, terraform is unaware of the configuration of your infrastructure

`terraform.tfstate.backup` helps to get back your previous terraform state



### Terraform Lock file

This keeps track of the versions of your providers as well as the terraform

This **should be pushed** to your VCS because it helps to keep the versioning of the terraform project in place.

### Terraform Cloud

We store terraform state file in a remote backend i.e. Terraform Cloud. Terraform Cloud needs to be configured using `terraform login`. This needs to be done before running `terraform init`

The credentials get stored in a file `credentials.tfrc.json` inside `terraform.d` folder

The format of the json file is :-
```sh
{
    "credentials": {
      "app.terraform.io": {
        "token": "xxxxxx"
      }
    }
  }
```
