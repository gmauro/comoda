TARGETS=build clean deploy test
VERSION=`cat VERSION`
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

tag:
	git tag v${VERSION}

test:
	@echo "test"



