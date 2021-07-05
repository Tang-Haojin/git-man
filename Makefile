build: index.html

index.html: git-man.adoc
	asciidoctor git-man.adoc -o index.html

clean:
	-rm -f index.html

.PHONY: build clean