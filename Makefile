TARGETS=build clean

all:
	@echo "Try one of: ${TARGETS}"

build:
	python setup.py bdist_wheel --universal

clean:
	python setup.py clean --all
	find . -name '*.pyc' -delete
	rm -rf dist *.egg-info __pycache__ build
