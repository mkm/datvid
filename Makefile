

WEEKS=wek0

all : $(WEEKS)

wek% :
	make -C week$* all