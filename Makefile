sandbox:
	load-env-purescript

prepare:
	# Prepare the source and build folders
	mkdir -p src dist
	# Install needed deps
	npm install grunt-purescript@0.5.1
	# Generate the template package.json
	npm init

install:
	# install the package
	npm install

build:
	grunt

run:
	node dist/Main.js

repl:
	psci
