#!/bin/bash

set -e

: ${PORT:=${PB_PORT:=8080}}

exec /pb/pocketbase serve "--http=0.0.0.0:${PORT}"

exit 1
