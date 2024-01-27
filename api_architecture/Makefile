# Makefile for dist-lambda
dist-lambda:
	pip3 install -t dependencies -r requirements.txt
	cd dependencies && zip ../lambda.zip -r .
	zip lambda.zip -u main.py
clean:
	rm -rf dependencies/
	rm lambda.zip

# Makefile default target
.PHONY: default
default: dist-lambda