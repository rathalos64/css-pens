PENS := $(shell find . -maxdepth 1 -type d -name [^\.[^\.]\* | sed -E 's/\.\///')

$(PENS): % : %/style.css
%/style.css: %/style.scss %/index.html
	$(BIN) $< $@
