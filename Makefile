.PHONY: install

CXX         ?= g++

venv: venv/bin/activate
IN_VENV=. ./venv/bin/activate

venv/bin/activate:
	test -d venv || virtualenv venv --python=python3
	${IN_VENV} && pip install pip --upgrade


install: venv
	${IN_VENV} && pip install -r requirements.txt

