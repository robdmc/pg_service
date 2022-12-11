#! /usr/bin/make 

.PHONY: help \
up \
down

help:  ## Print the help documentation
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

up: ## Open a shell in the container.  Can run ipython from here
	bash ./source_these_env_vars.sh
	-docker-compose up -d db

down: ## Run failing ibis scenario
	-docker-compose down