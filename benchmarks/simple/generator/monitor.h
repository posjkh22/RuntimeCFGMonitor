
#ifndef ACES_MONITOR
#define ACES_MONITOR

typedef int bool;
typedef list	INTEGRATED_CFG;
typedef Stack 	ReturnPointStack;

void signature_verification(unsigned int node_id, BBNode** currentBasicBlock);
void initialize_monitor_routine(unsigned int node_id);
bool if_has_connection_move(INTEGRATED_CFG* p_integrated_CFG, unsigned int node_id, BBNode** currentBasicBlock);
bool search_and_change_currentBB(unsigned int node_id, BBNode** currentBasicBlock);
unsigned int dequeue_signature(unsigned int* copied_signature_queue, unsigned int deque_pointer);


#endif
