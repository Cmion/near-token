export TOKEN_SYMBOL = "cmn"
export TOKEN_NAME = "Common Collective"
export TOTAL_SUPPLY = "100000000000000"
export TARGET="${CARGO_TARGET_DIR:-target}"



build: $(shell chmod 744 ./build.sh) $(shell ./build.sh)

deploy: $(shell chmod 744 ./deploy.sh) $(shell ./deploy.sh)

init-token: build
			deploy
			$(shell chmod 744 ./init.sh)
			$(shell ./init.sh)