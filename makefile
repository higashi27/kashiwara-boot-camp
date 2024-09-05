up:
	docker-compose up -d
down:
	docker-compose down
in:
	docker exec -ti code /bin/bash
run:
	docker exec -ti code ruby hello.rb
	