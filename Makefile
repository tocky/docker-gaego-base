# for container
serve:
	@dev_appserver.py \
		-A local \
		--host 0.0.0.0 \
		--admin_host 0.0.0.0 \
		backend

up:
	@docker-compose up

down:
	@docker-compose down
