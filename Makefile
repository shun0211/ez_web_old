server_start:
	docker-compose run --rm --service-ports ez_web

database_setup:
	docker-compose run --rm ez_web bundle exec rake db:create db:migrate db:seed

database_reset:
	docker-compose run --rm ez_web bundle exec rake db:drop db:create db:migrate db:seed

swagger_ui_start:
	docker-compose up -d swagger-ui

rails_c:
	dcr ez_web bundle exec rails c
