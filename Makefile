sandbox:
	load-env-purescript

clean:
	rm -rf dist/*

prepare:
	# Prepare the source and build folders
	mkdir -p src dist
	# Install needed deps
	npm install grunt-purescript@0.5.1 bower grunt-execute

npm-init:
	# Generate the template package.json
	npm init

bower-init:
	./node_modules/bower/bin/bower init

bower-update:
	./node_modules/bower/bin/bower update

install:
	# install the package
	npm install

build:
	grunt

run:
	# node dist/Main.js
	grunt run

repl:
	psci
