#!/bin/bash
hash php-cs-fixer 2>/dev/null || { echo >&2 "php-cs-fixer is required. Aborting."; exit 1; }

RETURN_CODE=0
for file in $@
do
    eval php-cs-fixer fix $file --level=none --fixers=phpdoc_no_package,phpdoc_scalar,single_quote,unused_use,ordered_use,phpdoc_order
    if [[ $? != 0 ]]
    then
        RETURN_CODE=1
    fi
done
exit $RETURN_CODE
