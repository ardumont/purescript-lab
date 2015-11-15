sandbox:
	load-env-purescript

clean:
	rm -rf dist/*
	rm -rf .psci_modules

prepare:
	# Prepare the source and build folders
	mkdir -p src dist
	# Install needed deps
	npm install grunt-purescript bower grunt-execute

npm-init:
	# Generate the template package.json
	npm init

bower-init:
	./node_modules/bower/bin/bower init

bower-update:
	./node_modules/bower/bin/bower update

pulp-init:
	pulp init

dep:
	pulp dep

install:
	# install the package
	npm install

build: clean
	grunt

run:
	grunt execute:run

repl:
	psci
