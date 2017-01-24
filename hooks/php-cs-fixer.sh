#!/bin/bash
hash php-cs-fixer 2>/dev/null || { echo >&2 "php-cs-fixer is required. Aborting."; exit 1; }

RETURN_CODE=0
for file in $@
do
    php-cs-fixer -V | grep -q "PHP CS Fixer version 1"

    if [[ $? -eq 0 ]]
    then
        eval php-cs-fixer fix $file --fixers=phpdoc_no_package,single_quote,phpdoc_order,unused_use,ordered_use
    else
        eval php-cs-fixer fix $file --rules=phpdoc_no_package,single_quote,phpdoc_order,no_unused_imports,ordered_imports
    fi

    if [[ $? != 0 ]]
    then
        RETURN_CODE=1
    fi
done
exit $RETURN_CODE
