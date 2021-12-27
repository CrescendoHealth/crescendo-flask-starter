#!/usr/bin/env bash

VENV_DIR=".venv"
if [ ! -d "$VENV_DIR" ]; then
  echo "Initializing in ${VENV_DIR}..."
  python3 -m venv $VENV_DIR
  source $VENV_DIR/bin/activate

  pip install -q -U pip
  pip install -q -r requirements.txt

  echo "Successfully initialized. You may delete $VENV_DIR and re-run this script to recreate your environment."
  echo "To add dependencies, first activate the virtualenv with: source $VENV_DIR/bin/activate"
  echo "After activating, you may pip install new dependencies."
else
  echo "Already initialized in ${VENV_DIR}."
fi
