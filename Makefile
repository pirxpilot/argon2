check: lint test

lint:
	./node_modules/.bin/biome ci

format:
	./node_modules/.bin/biome check --fix

test:
	node --test $(TEST_OPTS)

test-cov: TEST_OPTS := --experimental-test-coverage
test-cov: test

.PHONY: check format lint test test-cov

%.d.ts: %.js
	tsc $^ --declaration --allowJs --emitDeclarationOnly --outFile $@

types: argon2.d.ts

.PHONY: types
