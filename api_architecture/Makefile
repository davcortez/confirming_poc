# Makefile for dist-lambda
dist-lambda:
	pip3 install -t dependencies -r requirements.txt
	cd dependencies && zip ../lambda.zip -r .
	zip lambda.zip -u main.py
	zip lambda.zip -u schemas/* -x 'schemas/__pycache__/*'
	zip lambda.zip -u db/* -x 'db/__pycache__/*'
clean:
	rm -rf dependencies/
	rm lambda.zip

# Makefile default target
.PHONY: default
default: dist-lambda