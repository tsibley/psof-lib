prefix  := /usr/local
bin     := $(prefix)/bin

scripts := psof-lib dsh-psof-lib

install:
	@install -dv $(bin)
	@install -cv $(scripts) $(bin)

uninstall:
	@rm -v $(patsubst %,$(bin)/%,$(scripts)) \
		| perl -pe 'print "rm: "'

README.md: $(scripts)
	echo > $@
	for p in $(scripts); do \
		echo "# $$p" >> $@; \
		echo >> $@; \
		./$$p | perl -pe 's/^/    /' >> $@; \
		echo >> $@; \
	done
