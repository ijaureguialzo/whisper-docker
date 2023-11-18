#!make

ifneq (,$(wildcard ./.env))
    include .env
    export
	unexport EXTRA_SITES
else
$(error No se encuentra el fichero .env)
endif

help: _header
	${info }
	@echo Opciones:
	@echo --------------------
	@echo build
	@echo workspace
	@echo clean
	@echo --------------------

_header:
	@echo ----------
	@echo Whisper V3
	@echo ----------

build:
	@docker compose build --pull

workspace:
	@docker compose run --rm whisper /bin/bash

clean:
	@docker compose down -v --remove-orphans
