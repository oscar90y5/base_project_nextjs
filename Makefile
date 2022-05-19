include .env
export

up:
	docker compose -f docker-compose.yml -f docker-compose-dev.yml up --build -d

down:
	docker compose -f docker-compose.yml -f docker-compose-dev.yml down

downup:
	docker compose -f docker-compose.yml -f docker-compose-dev.yml down; \
	docker compose -f docker-compose.yml -f docker-compose-dev.yml up --build -d

up-pro:
	docker compose -f docker-compose.yml up --build -d

down-pro:
	docker compose -f docker-compose.yml down

downup-pro:
	docker compose -f docker-compose.yml down; \
	docker compose -f docker-compose.yml up --build -d

shell:
	docker exec -it ${COMPOSE_PROJECT_NAME}_node bash

logs:
	docker logs -f --tail 200 ${COMPOSE_PROJECT_NAME}_node

restart:
	docker restart ${COMPOSE_PROJECT_NAME}_node

