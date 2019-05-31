#!/bin/bash

if [[ -n "$@" ]]; then
    exec vim "$@"
else
    exec vim $(find "$@" -type f | selecta)
fi

