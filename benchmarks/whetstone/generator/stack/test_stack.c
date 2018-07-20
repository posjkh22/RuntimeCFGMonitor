
#include "aces_stack.h"

int main(void)
{
	int i;
	Stack stack;
			 
	InitStack(&stack);

	for (i = 1; i <= 5000; i++)
	{
		Push(&stack, i);
	}

	while (!IsEmpty(&stack))
	{
		printf("%d ", Pop(&stack));
	}
	printf("\n");

	return 0;
}
