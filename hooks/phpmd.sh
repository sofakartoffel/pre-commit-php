#!/bin/bash
hash phpmd 2>/dev/null || { echo >&2 "phpmd is required. Aborting."; exit 1; }

FILES_IMPLODED=${@:1:1}
for i in ${@:2}
do
  FILES_IMPLODED=$FILES_IMPLODED,$i
done

exec phpmd "$FILES_IMPLODED" text cleancode,codesize,controversial,design,naming,unusedcode
exit 0
