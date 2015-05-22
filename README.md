# pre-commit-php
[pre-commit](http://pre-commit.com/) scriptes for PHP.
## Setup
Add to config file:
```yaml
-
    repo:   git://github.com/sofakartoffel/pre-commit-php
    sha:    0.1.0
    hooks:
        -   id: phpcs
        -   id: phpcbf
        -   id: php-cs-fixer
        -   id: phpmd
```
See http://pre-commit.com/#usage for detailed informations.
