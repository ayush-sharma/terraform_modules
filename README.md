# Resusable Terraform Modules
This repo contains resuable Terraform components that can be integrated in any project.

Usage:
```hcl-terraform
module "route53" {
  source = "git@github.com:ayush-sharma/terraform_modules//aws/route53_record"
  zone_id = ""
  name    = ""
  type    = ""
  ttl     = ""

  records = [
    "",
  ]
}
```

Once the modules have been defined, do:
```bash
terraform get
```

Terraform module documentation:
https://www.terraform.io/docs/modules/sources.html