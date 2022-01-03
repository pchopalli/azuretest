install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest -vv test-pc1.py

format:
	black *.py


lint:
	pylint --disable=R,C pc1.py

all: install lint test