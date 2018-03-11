TARGETS=build clean deploy test

all:
	@echo "Try one of: ${TARGETS}"

build:  clean
	python setup.py sdist
	python setup.py bdist_wheel --universal

clean:
	python setup.py clean --all
	find . -name '*.pyc' -delete
	rm -rf dist *.egg-info __pycache__ build

deploy: build
	twine upload dist/*

test:
	@echo "test"



