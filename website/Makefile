# Generate the FreeBSD website
#
# Copyright (c) 2020-2021, The FreeBSD Documentation Project
# Copyright (c) 2020-2021, Sergio Carlavilla <carlavilla@FreeBSD.org>
#
# Targets intended for use on the command line
#
# all (default)	-	generate the releases.toml and compile all the website
# generate	-	generate the releases.toml and build all the website
# prepare	-	prepare for running either generate or all
#
# Targets that may be run manually from the command line:
#
# copy-shared	-	move the shared AsciiDoc entities to the folder project

MAINTAINER=carlavilla@FreeBSD.org

PYTHON_CMD =	/usr/local/bin/python3.7
HUGO_CMD =	/usr/local/bin/hugo

.ORDER: copy-shared starting-message

.ORDER: starting-message generate-books-toc
.ORDER: starting-message build
.ORDER: generate-books-toc build

all: starting-message generate-releases run
generate: starting-message generate-releases build .PHONY
prepare: copy-shared .PHONY

copy-shared: move-shared .PHONY

starting-message: .PHONY
	@echo ---------------------------------------------------------------
	@echo                   Building the website
	@echo ---------------------------------------------------------------

generate-releases: .PHONY
	${PYTHON_CMD} ./tools/releases-toml.py -p ./shared/releases.adoc

run: .PHONY
	${HUGO_CMD} server -D

build: .PHONY
	${HUGO_CMD}

move-shared: .PHONY
	cp -R ../shared ./shared
