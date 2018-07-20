OBJ = dijkstra_large.o is_signature_queue_full.o


default: execute bitcode
	llvm-dis dijkstra.bc


execute: ${OBJ} Makefile
	clang  ${OBJ} -o dijkstra -lm
dijkstra_large.o: dijkstra_large.c
	clang -c dijkstra_large.c
is_signature_queue_full:
	clang -c is_signature_queue_full.c

bitcode: dijkstra_large.bc
	llvm-link -o dijkstra.bc dijkstra_large.bc
dijkstra_large.bc:
	clang -emit-llvm -c dijkstra_large.c -o dijkstra_large.bc
	

clean:
	rm -rf *.o dijkstra dijstra.bc *.bc *.ll






# spare #


dijkstra_large: dijkstra_large.c Makefile
	gcc -static dijkstra_large.c -O3 -o dijkstra_large

dijkstra_small: dijkstra_small.c Makefile
	gcc -static dijkstra_small.c -O3 -o dijkstra_small 

