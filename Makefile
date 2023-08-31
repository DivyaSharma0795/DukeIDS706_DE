 # Creating a Makefile using Black formatter code (https://gdevops.gitlab.io/tuto_project/software_quality/black/black.html)
 # makefile for quality code.

 # https://www.gnu.org/prep/standards/html_node/Makefile-Basics.html#Makefile-Basics
 SHELL = /bin/bash

 .SUFFIXES:
 .SUFFIXES: .c .o

 # Put it first so that "make" without argument is like "make help".
 help:
     @echo " "
     @echo "Targets:"
     @echo " "
     @echo "- make black"
     @echo "- make check_all_files"
     @echo "- make precommit_autoupdate"
     @echo " "

 black:
     pre-commit run black

 check_all_files:
     pre-commit run --all-files

 precommit_autoupdate:
     pre-commit autoupdate

 .PHONY: help  Makefile
 # Catch-all target:
 %: Makefile
     echo "Hello World !"

 .PHONY: docs
 init:
	pip install -r requirements.txt
