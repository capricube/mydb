
MOCHA=mocha
REPORTER=dot
TESTS = $(shell find test/*.js)

test:
	@$(MOCHA) \
		--reporter $(REPORTER) \
		--slow 100ms \
		--bail \
		$(TESTS)

.PHONY: test
