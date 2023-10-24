PHP-boilerplate
===============
![Build](https://github.com/vdebes/php-boilerplate/actions/workflows/build.yml/badge.svg)
[![Coverage](https://codecov.io/gh/vdebes/php-boilerplate/graph/badge.svg?token=G1LTFUQS66)](https://codecov.io/gh/vdebes/php-boilerplate)

A starting point for a coding dojo or a small personal project. There is no web framework included, but most of the 
quality assessment tools I use on a daily basis.

Commands to get started
-----------------------
In a terminal, to create a new project :

```composer create-project vdebes/php-boilerplate myApp --remove-vcs ``` 

Tests
-----
* Unit testing with [PHP-Unit](https://github.com/sebastianbergmann/phpunit) ran at pre-commit, can be run with coverage
 generation with ```composer run test-coverage```

Static analysis
---------------
* Static analysis with [PHPStan](https://github.com/phpstan/phpstan) ran at pre-commit

Quality metrics
---------------
* Project quality with [PHPInsights](https://github.com/nunomaduro/phpinsights) ran at pre-push

Coding standards
----------------
* Codestyle checker and fixer with [PHP-CS-Fixer](https://github.com/PHP-CS-Fixer/PHP-CS-Fixer) ran at pre-commit, some
 errors can be fixed with ```composer run csfix```
