

WEEKS=wek0 wek1 wek2 wek3 wek4

all : $(WEEKS)

wek% :
	make -C week$* all