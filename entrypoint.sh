#!/usr/bin/env bash

set -e

python -c 'from auto_bump import main; main.main()'

exit 0;