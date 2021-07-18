plugins = $(addprefix node_modules/gitbook-plugin-,$(shell jq -r .plugins[] book.json | grep -x -v "\-.*"))

build: _book/index.html

_book/index.html: 入门/*.md 基本操作/* *.md images/* $(plugins) book.json
	gitbook build

$(plugins):
	gitbook install

release: build
	cp -rf _book/* ../git-man-web/

clean:
	-rm -rf _book

.PHONY: build clean release
