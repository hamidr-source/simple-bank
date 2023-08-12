postgres:
	docker run --name postgres10 -p 5432:5432 -e POSTGRES_USER=root -e POSTGRES_PASSWORD=secret -d postgres:12-alpine 

createdb:
	docker exec -it postgres10 createdb --username=root --owner=root simple_bank

dropdb:
	docker exec -it postgres10 dropdb simple_bank

.PHONY: createdb dropdb
