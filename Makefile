# Makefile
#   Compiles the LaTeX (.tex) 
#
# Author: Caleb Carlson <caleb.carlson@hpe.com>
#
#

.DEFAULT_GOAL := pdf

.PHONY: docker-build
docker-build:
	docker built -t latex .

.PHONY: pdf
pdf:
	docker run --rm -i -v $(shell pwd):/data latex pdflatex caleb_carlson_resume.tex

.PHONY: clean
clean:
	rm -rf *.aux *.log *.out
