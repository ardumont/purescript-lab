sandbox:
	load-env-purescript

prepare:
	mkdir -p src dist

build:
	psc src/Chapter2.purs --output dist/Main.js --main Chapter2 --module Chapter2

run:
	node dist/Main.js

repl:
	psci
