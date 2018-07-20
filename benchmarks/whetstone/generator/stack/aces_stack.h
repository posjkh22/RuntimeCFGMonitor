
#include <stdio.h>
#include <stdlib.h>
 

 
typedef struct Node 
{
	unsigned int data;
	struct Node *next;
}Node;
 
typedef struct Stack 
{
	Node *top;    
}Stack;
 
void InitStack(Stack *stack);
int IsEmpty(Stack *stack); 
void push(Stack *stack, int data); 
int pop(Stack *stack); 
void delete_stack(Stack* stack);
 
