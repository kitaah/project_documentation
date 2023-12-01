.PHONY: ps build rebuild up start fresh stop restart down destroy

ps: ## Show containers
	@docker compose ps
build: ## Build all containers
	@docker compose build
rebuild: ## Rebuilds and starts all containers
	@docker compose up --build
up: ##  Builds, (re)creates, and starts containers
	@docker-compose up
start: ## Start all containers
	@docker compose start
fresh: stop destroy build start ## Destroy & recreate all containers
stop: ## Stop all containers
	@docker compose stop
down: ## Stop and remove all containers
	@docker compose down
restart: stop start ## Restart all containers