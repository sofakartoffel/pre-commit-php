#!/bin/bash
hash phpcs 2>/dev/null || { echo >&2 "phpcs is required. Aborting."; exit 1; }

exec phpcs $@
exit $?
