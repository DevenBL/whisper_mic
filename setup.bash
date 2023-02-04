#!/bin/bash
python3 -m venv .

source ./bin/activate

python -m pip install pip -U pip
python -m pip install -r requirements.txt

echo "run the .py scripts to start using the whisper mic"
echo "to leave the python virtual enviroment typer deactivate"
