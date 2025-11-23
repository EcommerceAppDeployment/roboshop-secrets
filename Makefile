default:
	git pull
	terraform init
	terraform plan -var token=$(token)
	