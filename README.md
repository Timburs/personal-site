## Site Info

- Static site with a custom domain hosted on Azure using : Storage Account, Front Door, Azure DNS, CosmosDB, Functions
- Infrastructure defined in Terraform

## Running Terraform Locally

```
- az login
- terraform init
- terraform plan -var-file "env/prod.tfvars"
```