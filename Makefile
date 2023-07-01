directories:
	@mkdir src bin include build lib
build:
	@cmake -S . -B build
compile:
	@make -C build
