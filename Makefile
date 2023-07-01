setup:
	@rm -rf .git
	@git init
	@mkdir src bin include build lib
build:
	@cmake -S . -B build
compile:
	@make -C build
