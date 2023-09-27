s:
	@rm -rf .git
	@git init
	@mkdir src bin include build lib
b:
	@cmake -S . -B build
c:
	@make -C build
