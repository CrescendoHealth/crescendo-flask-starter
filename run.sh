#!/usr/bin/env bash

VENV_DIR=".venv"
if [ ! -d "$VENV_DIR" ]; then
  echo "virtualenv has not been created. Please run ./setup.sh"
else
  source $VENV_DIR/bin/activate
  exec flask run
fi
