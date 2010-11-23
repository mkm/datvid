

WEEKS=wek0 wek1

all : $(WEEKS)

wek% :
	make -C week$* all