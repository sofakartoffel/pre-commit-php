#!/bin/bash
hash php-cs-fixer 2>/dev/null || { echo >&2 "php-cs-fixer is required. Aborting."; exit 1; }

exec php-cs-fixer fix $@ --level=none --fixers=phpdoc_no_package,phpdoc_scalar,single_quote,unused_use,ordered_use,phpdoc_order
exit $?
