setup:
	docker compose run --rm app make setup

ci:
	docker compose -f docker-compose.yml up --abort-on-container-exit

test:
	docker compose -f docker-compose.yml -f docker-compose.test.yml up --abort-on-container-exit

dev:
	docker compose up

prod-build:
	docker compose -f docker-compose.yml build app

prod-push:
	docker compose -f docker-compose.yml push app
