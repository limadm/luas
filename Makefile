PREFIX ?= /usr

install:
	install -m755 -D luas "${DESTDIR}${PREFIX}/bin/luas"
	install -m644 -D luas-completion.bash "${DESTDIR}${PREFIX}/share/bash-completion/completions/luas"
	install -m644 -D luas-completion.fish "${DESTDIR}${PREFIX}/share/fish/vendor_completions.d/luas.fish"

uninstall:
	rm "${DESTDIR}${PREFIX}/bin/luas"
	rm "${DESTDIR}${PREFIX}/share/bash-completion/completions/luas"
	rm "${DESTDIR}${PREFIX}/share/fish/vendor_completions.d/luas.fish"
