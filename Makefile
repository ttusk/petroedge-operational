.PHONY: build deps proto.generate fmt lint test ci run ui-up ui-down up down reset db-up db-down db-reset

COMPOSE ?= docker compose

build:
	mix compile

deps:
	mix deps.get

proto.generate:
	mix proto.generate

fmt:
	mix format --check-formatted

lint:
	mix format --check-formatted

test:
	MIX_ENV=test mix ecto.migrate
	MIX_ENV=test mix test

ci:
	mix format --check-formatted
	mix compile
	MIX_ENV=test mix ecto.migrate
	MIX_ENV=test mix test
run:
	mix run --no-halt

ui-up:
	$(COMPOSE) --profile tools up --build -d grpc-ui

ui-down:
	$(COMPOSE) --profile tools stop grpc-ui

up:
	$(COMPOSE) --profile tools up --build -d operational-postgres operational-migrate operational grpc-ui

down:
	$(COMPOSE) --profile tools down

reset: db-reset

db-up:
	$(COMPOSE) up -d operational-postgres

db-down:
	$(COMPOSE) down

db-reset:
	$(COMPOSE) down --volumes
