sandbox:
        # cf. ardumont/dot-files/.nixpkgs/config.nix
	nix-env -iA nixpkgs.purescriptToolsEnv

install:
	npm install -g purescript pulp bower
	pulp init

build:
	pulp build

run:
	pulp run

repl:
	pulp psci
