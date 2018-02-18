TARGETS=clean build

all:
	@echo "Try one of: ${TARGETS}"


clean:
	python setup.py clean --all
	find . -name '*.pyc' -delete
	rm -rf dist *.egg-info __pycache__ build

build:
    python setup.py bdist_wheel --universal