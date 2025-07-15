# Makefile

default: help

.PHONY: help
help: ## Show this help.
	@egrep '^(.+)\:\ .*##\ (.+)' ${MAKEFILE_LIST} | sed 's/:.*##/#/' | column -t -c 2 -s '#'

.PHONY: test
test: ## Run all tests.
	go test -count 1 ./...