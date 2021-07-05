build:
	antora --fetch antora.yml
	cp -rf build/site/* .
	-@mkdir git-man/dev/_images
	@cp -f images/* git-man/dev/_images/

clean:
	rm -rf ./_ ./build ./git-man ./index.html

.PHONY: build clean