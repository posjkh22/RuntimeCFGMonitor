
#include "aces_stack.h"
#include <stdio.h>

void InitStack(Stack *stack)
{

	stack->top = NULL; 
}
 
int IsEmpty(Stack *stack)
{
	return stack->top == NULL;   
}
void push(Stack *stack, int data)
{
	Node *now = (Node *)malloc(sizeof(Node)); 
	now->data = data;
	now->next = stack->top;
	stack->top = now;   
}

int pop(Stack *stack)
{
	Node *now;
	int re;
	
	if (IsEmpty(stack))
	{
		return 0;
	}
	
	now = stack->top;
	re = now->data;

	stack->top = now->next;
	free(now);
	
	return re;
}

void delete_stack(Stack* stack)
{

	while(!IsEmpty(stack))
	{
		pop(stack);
	}

	free(stack);
	return;
}

unsigned int top(Stack* stack)
{
	return  stack->top->data;
}
