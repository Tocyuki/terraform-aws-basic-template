# Terraform AWS Basic Template
AWS Basic Configuration Template of Terraform

## Usage
You need prepare .env file.

```
$ cp .env.example .env
$ vi .env
AWS_ACCESS_KEY_ID=xxxxxxxxxxxxxxxxxxxx
AWS_SECRET_ACCESS_KEY=xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
AWS_DEFAULT_REGION=xxxxxxxxx
```

### terraform init
```
$ make init
```

### terraform plan
```
$ make plan
```

### terraform apply
```
$ make apply
```

### terraform validate
```
$ make check
```
