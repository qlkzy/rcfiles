#!/bin/bash

exec vim $(find "$@" -type f | selecta)
