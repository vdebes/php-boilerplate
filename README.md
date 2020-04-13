# PHP-boilerplate

[![Build Status](https://travis-ci.org/vdebes/php-boilerplate.svg?branch=master)](https://travis-ci.org/vdebes/php-boilerplate)
[![Test Coverage](https://api.codeclimate.com/v1/badges/d3212371239a59fae1e4/test_coverage)](https://codeclimate.com/github/vdebes/php-boilerplate/test_coverage)
[![Maintainability](https://api.codeclimate.com/v1/badges/d3212371239a59fae1e4/maintainability)](https://codeclimate.com/github/vdebes/php-boilerplate/maintainability)  

A starting point for a coding dojo or a small personal project. There is no web framework included, but most of the 
quality assessment tools I use on a daily basis.

## Commands to get started
In a terminal :

```composer create-project vdebes/php-boilerplate myApp --remove-vcs ``` 

```make help```

## Tests
* Unit testing with [PHP-Unit](https://github.com/sebastianbergmann/phpunit)
## Static analysis
* Static analysis with [PHPStan](https://github.com/phpstan/phpstan)
* Suboptimal code detection with [PHPMD](https://github.com/phpmd/phpmd)
* Quality analysis and metrics with [PHPInsights]()
## Metrics
* Project metrics with [PHPLoC](https://github.com/sebastianbergmann/phploc)
## Coding standards
* Codestyle checker and fixer with [PHP_CodeSniffer](https://github.com/squizlabs/PHP_CodeSniffer)
