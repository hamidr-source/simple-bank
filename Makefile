createdb:
	docker exec -it postgres10 createdb --username=root --owner=root simple_bank

dropdb:
	docker exec -it postgres10 dropdb simple_bank

.PHONY: createdb dropdb

