# Help
TARGETS:=$(MAKEFILE_LIST)

define printSection
	@printf "\033[36m\n==================================================\033[0m\n"
	@printf "\033[36m $1 \033[0m"
	@printf "\033[36m\n==================================================\033[0m\n"
endef

.PHONY: help
help: ## This help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(TARGETS) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: unit
unit: ## Runs unit tests
	$(call printSection,PHP UNIT)
	vendor/bin/phpunit tests

.PHONY: coverage
coverage: ## Runs unit tests
	$(call printSection,UNIT TESTS COVERAGE REPORTING)
	vendor/bin/phpunit tests

.PHONY: static
static: ## Runs static analysis
	$(call printSection,PHP STAN ANALYSIS)
	vendor/bin/phpstan analyse src tests
	$(call printSection,PHP MESS DETECTOR ANALYSIS)
	vendor/bin/phpmd src,tests text rules.xml
	$(call printSection,PHP INSIGHTS ANALYSIS)
	vendor/bin/phpinsights --config-path=phpinsights.php -n # Analyses only src - waiting for v2

.PHONY: metric
metric: ## Runs metrics reports generation
	$(call printSection,PHPLOC METRICS)
	vendor/bin/phploc src tests

.PHONY: cs
cs:
	$(call printSection,CODE STYLE CHECKING)
	vendor/bin/phpcs -s

.PHONY: cs-fix
cs-fix: ## Runs Codestyle Fixer
	$(call printSection,CODE STYLE FIXING)
	vendor/bin/phpcbf
