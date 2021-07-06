build: index.html

index.html: git-man.adoc images/* css/*
	asciidoctor git-man.adoc -o index.html

clean:
	-rm -f index.html

.PHONY: build clean