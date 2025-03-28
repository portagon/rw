PREFIX ?= /usr/local/bin
SCRIPT_NAME = rw

all: install

install:
	@echo "Installing $(SCRIPT_NAME) to $(PREFIX)"
	install -m 755 $(SCRIPT_NAME) $(PREFIX)/$(SCRIPT_NAME)

uninstall:
	@echo "Removing $(SCRIPT_NAME) from $(PREFIX)"
	rm -f $(PREFIX)/$(SCRIPT_NAME)

.PHONY: all install uninstall
