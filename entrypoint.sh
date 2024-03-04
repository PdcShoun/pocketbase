#!/bin/sh

set -e

PB_ARGS="serve --http=0.0.0.0:8080"

case "$1" in
    -- | pocketbase)
        shift
        if [[ "$1" != "" ]] ; then
            exec /pb/pocketbase "$@"
        else
            exec /pb/pocketbase "$@" $PB_ARGS
        fi
        ;;
    -*)
        exec /pb/pocketbase "$@"
        ;;
    *)
        exec "$@"
esac

exit 1
