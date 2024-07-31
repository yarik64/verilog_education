SYNTH = iverilog

SOURCES  = $(wildcard *.v)
TARGETS  = $(shell basename `pwd`)

T := 1.v 2.v 3.v

all: $T #$(TARGETS)
	@echo "^:= $^ || <:= $< || @:= $@"
	@echo SOURCES:= $(SOURCES)
	@echo TARGETS:= $(TARGETS)

$T:
	@echo "^:= $^ || <:= $< || @:= $@"



$(TARGETS): $(SOURCES)
	$(SYNTH) -o $@ $^


clean:; $(RM) $(wildcard ./*~ ./*.bak)
