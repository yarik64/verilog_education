SYNTH = iverilog

SOURCES  = $(wildcard *.v)
TARGETS  = $(shell basename `pwd`)


all: $(TARGETS)
	@echo SOURCES:= $(SOURCES)
	@echo TARGETS:= $(TARGETS)


$(TARGETS): $(SOURCES)
	$(SYNTH) -o $@ $^


clean:; $(RM) $(wildcard ./*~ ./*.bak)
