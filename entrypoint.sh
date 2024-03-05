#!/bin/sh

set -e

PB_ARGS="serve --http=0.0.0.0:8080"
PB_BIN="/pb/pocketbase"

case "$1" in
    -- | pocketbase)
        shift
        if [[ "$1" != "" ]] ; then
            exec $PB_BIN "$@"
        else
            exec $PB_BIN $PB_ARGS
        fi
        ;;
    -*)
        exec $PB_BIN "$@"
        ;;
    *)
        exec "$@"
esac

exit 1
