
BENCH_MARK = ../outputs
INPUT_MAIN = translated
LIST = ./list
STACK = ./stack
FINAL_OUTPUT_BINARY = final_output_binary


default: link
fine_objects: monitor aces_stack aces_list fine_initialize_monitor 
coarse_objects: monitor aces_stack aces_list coarse_initialize_monitor

link: fine_objects input
	gcc -o $(FINAL_OUTPUT_BINARY) $(INPUT_MAIN).o fine_initialize_monitor.o monitor.o $(STACK)/aces_stack.o $(LIST)/aces_list.o -lm -lpthread
	

# Benchmark input file #

input:
	llc $(BENCH_MARK)/$(INPUT_MAIN).ll -o $(INPUT_MAIN).s
	gcc -c $(INPUT_MAIN).s


# generated monitor code #

fine_initialize_monitor:
	cp -f $(BENCH_MARK)/fine_initialize_monitor.c .
	gcc -c fine_initialize_monitor.c

coarse_initiailize_monitor:
	cp -f $(BENCH_MARK)/coarse_initialize_monitor.c .
	gcc -c coarse_initialize_monitor.c


# libraries #

aces_stack:
	make -C $(STACK)
	
aces_list:
	make -C $(LIST)

monitor:
	gcc -c monitor.c



clean:
	rm -f *.o *.s  $(FINAL_OUTPUT_BINARY)
