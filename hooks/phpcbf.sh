#!/bin/bash
hash phpcbf 2>/dev/null || { echo >&2 "phpcbf is required. Aborting."; exit 1; }

exec phpcbf $@
exit $?
