.PHONY: init plan apply destroy check

init:
	docker-compose run --rm terraform fmt -recursive
	docker-compose run --rm terraform init

plan:
	docker-compose run --rm terraform fmt -recursive
	docker-compose run --rm terraform plan

apply:
	docker-compose run --rm terraform fmt -recursive
	docker-compose run --rm terraform apply

apply.auto:
	docker-compose run --rm terraform fmt -recursive
	docker-compose run --rm terraform apply -auto-approve

destroy:
	docker-compose run --rm terraform fmt -recursive
	docker-compose run --rm terraform destroy

check:
	docker-compose run --rm terraform fmt -recursive
	docker-compose run --rm terraform fmt -check
	docker-compose run --rm terraform validate

workspace.show:
	docker-compose run --rm terraform workspace show

workspace.new.dev:
	docker-compose run --rm terraform workspace new dev

workspace.new.stg:
	docker-compose run --rm terraform workspace new stg

workspace.new.prod:
	docker-compose run --rm terraform workspace new prod

workspace.select.dev:
	docker-compose run --rm terraform workspace select dev

workspace.select.stg:
	docker-compose run --rm terraform workspace select stg

workspace.select.prod:
	docker-compose run --rm terraform workspace select prod
