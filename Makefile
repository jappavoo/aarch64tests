mypgm: mypgm.o
	ld -g mypgm.o -o mypgm

mypgm.o: mypgm.s
	as -g mypgm.s -o mypgm.o
