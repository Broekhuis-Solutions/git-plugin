ARGS = $(filter-out $@,$(MAKECMDGOALS))

.PHONY: up
up: ## (build) Start container
	docker compose up

.PHONY: copy
copy: ## Copy the compiled file to local system
	bash copy.sh