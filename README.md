# pre-commit-php
[pre-commit](http://pre-commit.com/) scriptes for PHP.
## Setup
Add to config file:
```yaml
-
    repo:   git://github.com/sofakartoffel/pre-commit-php
    sha:    0.0.1
    hooks:
        -   id: phpcs
        -   id: phpmd
```
See http://pre-commit.com/#usage for detailed informations.
