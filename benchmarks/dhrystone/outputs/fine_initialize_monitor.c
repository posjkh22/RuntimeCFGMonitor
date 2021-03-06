#include <stdlib.h>
#include "list/aces_list.h" 

struct BBNode;
struct list;

typedef list INTEGRATED_CFG;
extern INTEGRATED_CFG* p_integrated_CFG;
extern unsigned int leverage_signature;

INTEGRATED_CFG* generate_path_tree();
void add_basicblock(INTEGRATED_CFG* ,unsigned int, unsigned int, unsigned int, unsigned int);
void generate_return_point_stack();

void initialize_monitor_routine(unsigned int node_id)
{
	generate_return_point_stack();
	p_integrated_CFG = generate_path_tree();
	add_basicblock(p_integrated_CFG, 0x10001, 1, 0x1, 0x10002);
	add_basicblock(p_integrated_CFG, 0x10002, 1, 0x1, 0x10003);
	add_basicblock(p_integrated_CFG, 0x10003, 1, 0x1, 0x10004);
	add_basicblock(p_integrated_CFG, 0x10004, 1, 0x1, 0x10005);
	add_basicblock(p_integrated_CFG, 0x10005, 1, 0x1, 0x10006);
	add_basicblock(p_integrated_CFG, 0x10006, 1, 0x1, 0x10007);
	add_basicblock(p_integrated_CFG, 0x10007, 1, 0x1, 0x10008);
	add_basicblock(p_integrated_CFG, 0x10008, 1, 0x1, 0x10009);
	add_basicblock(p_integrated_CFG, 0x10009, 2, 0x2, 0x1000a);
	add_basicblock(p_integrated_CFG, 0x10009, 2, 0x2, 0x1000c);
	add_basicblock(p_integrated_CFG, 0x1000a, 1, 0x1, 0x1000b);
	add_basicblock(p_integrated_CFG, 0x1000b, 1, 0x1, 0x1000e);
	add_basicblock(p_integrated_CFG, 0x1000c, 1, 0x1, 0x1000d);
	add_basicblock(p_integrated_CFG, 0x1000d, 1, 0x1, 0x1000e);
	add_basicblock(p_integrated_CFG, 0x1000e, 1, 0x1, 0x1000f);
	add_basicblock(p_integrated_CFG, 0x1000f, 1, 0x1, 0x10010);
	add_basicblock(p_integrated_CFG, 0x10010, 1, 0x1, 0x10011);
	add_basicblock(p_integrated_CFG, 0x10011, 1, 0x1, 0x10012);
	add_basicblock(p_integrated_CFG, 0x10012, 2, 0x2, 0x10013);
	add_basicblock(p_integrated_CFG, 0x10012, 2, 0x2, 0x10028);
	add_basicblock(p_integrated_CFG, 0x10013, 3, 0x2, 0x60001);
	add_basicblock(p_integrated_CFG, 0x10013, 3, 0x2, 0x10014);
	add_basicblock(p_integrated_CFG, 0x10014, 3, 0x2, 0x70001);
	add_basicblock(p_integrated_CFG, 0x10014, 3, 0x2, 0x10015);
	add_basicblock(p_integrated_CFG, 0x10015, 1, 0x1, 0x10016);
	add_basicblock(p_integrated_CFG, 0x10016, 3, 0x2, 0x110001);
	add_basicblock(p_integrated_CFG, 0x10016, 3, 0x2, 0x10017);
	add_basicblock(p_integrated_CFG, 0x10017, 1, 0x1, 0x10018);
	add_basicblock(p_integrated_CFG, 0x10018, 2, 0x2, 0x10019);
	add_basicblock(p_integrated_CFG, 0x10018, 2, 0x2, 0x1001b);
	add_basicblock(p_integrated_CFG, 0x10019, 3, 0x2, 0xe0001);
	add_basicblock(p_integrated_CFG, 0x10019, 3, 0x2, 0x1001a);
	add_basicblock(p_integrated_CFG, 0x1001a, 1, 0x1, 0x10018);
	add_basicblock(p_integrated_CFG, 0x1001b, 3, 0x2, 0xf0001);
	add_basicblock(p_integrated_CFG, 0x1001b, 3, 0x2, 0x1001c);
	add_basicblock(p_integrated_CFG, 0x1001c, 3, 0x2, 0x80001);
	add_basicblock(p_integrated_CFG, 0x1001c, 3, 0x2, 0x1001d);
	add_basicblock(p_integrated_CFG, 0x1001d, 1, 0x1, 0x1001e);
	add_basicblock(p_integrated_CFG, 0x1001e, 2, 0x2, 0x1001f);
	add_basicblock(p_integrated_CFG, 0x1001e, 2, 0x2, 0x10026);
	add_basicblock(p_integrated_CFG, 0x1001f, 3, 0x2, 0x100001);
	add_basicblock(p_integrated_CFG, 0x1001f, 3, 0x2, 0x10020);
	add_basicblock(p_integrated_CFG, 0x10020, 2, 0x2, 0x10021);
	add_basicblock(p_integrated_CFG, 0x10020, 2, 0x2, 0x10024);
	add_basicblock(p_integrated_CFG, 0x10021, 3, 0x2, 0xc0001);
	add_basicblock(p_integrated_CFG, 0x10021, 3, 0x2, 0x10022);
	add_basicblock(p_integrated_CFG, 0x10022, 1, 0x1, 0x10023);
	add_basicblock(p_integrated_CFG, 0x10023, 1, 0x1, 0x10024);
	add_basicblock(p_integrated_CFG, 0x10024, 1, 0x1, 0x10025);
	add_basicblock(p_integrated_CFG, 0x10025, 1, 0x1, 0x1001e);
	add_basicblock(p_integrated_CFG, 0x10026, 3, 0x2, 0x90001);
	add_basicblock(p_integrated_CFG, 0x10026, 3, 0x2, 0x10027);
	add_basicblock(p_integrated_CFG, 0x10027, 1, 0x1, 0x10012);
	add_basicblock(p_integrated_CFG, 0x10028, 1, 0x1, 0x10029);
	add_basicblock(p_integrated_CFG, 0x10029, 1, 0x1, 0x1002a);
	add_basicblock(p_integrated_CFG, 0x1002a, 1, 0x1, 0x1002b);
	add_basicblock(p_integrated_CFG, 0x1002b, 1, 0x1, 0x1002c);
	add_basicblock(p_integrated_CFG, 0x1002c, 1, 0x1, 0x1002d);
	add_basicblock(p_integrated_CFG, 0x1002d, 1, 0x1, 0x1002e);
	add_basicblock(p_integrated_CFG, 0x1002e, 1, 0x1, 0x1002f);
	add_basicblock(p_integrated_CFG, 0x1002f, 1, 0x1, 0x10030);
	add_basicblock(p_integrated_CFG, 0x10030, 1, 0x1, 0x10031);
	add_basicblock(p_integrated_CFG, 0x10031, 1, 0x1, 0x10032);
	add_basicblock(p_integrated_CFG, 0x10032, 1, 0x1, 0x10033);
	add_basicblock(p_integrated_CFG, 0x10033, 1, 0x1, 0x10034);
	add_basicblock(p_integrated_CFG, 0x10034, 1, 0x1, 0x10035);
	add_basicblock(p_integrated_CFG, 0x10035, 1, 0x1, 0x10036);
	add_basicblock(p_integrated_CFG, 0x10036, 1, 0x1, 0x10037);
	add_basicblock(p_integrated_CFG, 0x10037, 1, 0x1, 0x10038);
	add_basicblock(p_integrated_CFG, 0x10038, 1, 0x1, 0x10039);
	add_basicblock(p_integrated_CFG, 0x10039, 1, 0x1, 0x1003a);
	add_basicblock(p_integrated_CFG, 0x1003a, 1, 0x1, 0x1003b);
	add_basicblock(p_integrated_CFG, 0x1003b, 1, 0x1, 0x1003c);
	add_basicblock(p_integrated_CFG, 0x1003c, 1, 0x1, 0x1003d);
	add_basicblock(p_integrated_CFG, 0x1003d, 1, 0x1, 0x1003e);
	add_basicblock(p_integrated_CFG, 0x1003e, 1, 0x1, 0x1003f);
	add_basicblock(p_integrated_CFG, 0x1003f, 1, 0x1, 0x10040);
	add_basicblock(p_integrated_CFG, 0x10040, 1, 0x1, 0x10041);
	add_basicblock(p_integrated_CFG, 0x10041, 1, 0x1, 0x10042);
	add_basicblock(p_integrated_CFG, 0x10042, 1, 0x1, 0x10043);
	add_basicblock(p_integrated_CFG, 0x10043, 1, 0x1, 0x10044);
	add_basicblock(p_integrated_CFG, 0x10044, 1, 0x1, 0x10045);
	add_basicblock(p_integrated_CFG, 0x10045, 1, 0x1, 0x10046);
	add_basicblock(p_integrated_CFG, 0x10046, 1, 0x1, 0x10047);
	add_basicblock(p_integrated_CFG, 0x10047, 1, 0x1, 0x10048);
	add_basicblock(p_integrated_CFG, 0x10048, 1, 0x1, 0x10049);
	add_basicblock(p_integrated_CFG, 0x10049, 1, 0x1, 0x1004a);
	add_basicblock(p_integrated_CFG, 0x1004a, 1, 0x1, 0x1004b);
	add_basicblock(p_integrated_CFG, 0x1004b, 1, 0x1, 0x1004c);
	add_basicblock(p_integrated_CFG, 0x1004c, 1, 0x1, 0x1004d);
	add_basicblock(p_integrated_CFG, 0x1004d, 1, 0x1, 0x1004e);
	add_basicblock(p_integrated_CFG, 0x1004e, 1, 0x1, 0x1004f);
	add_basicblock(p_integrated_CFG, 0x1004f, 1, 0x1, 0x10050);
	add_basicblock(p_integrated_CFG, 0x10050, 1, 0x1, 0x10051);
	add_basicblock(p_integrated_CFG, 0x10051, 1, 0x1, 0x10052);
	add_basicblock(p_integrated_CFG, 0x10052, 1, 0x1, 0x10053);
	add_basicblock(p_integrated_CFG, 0x10053, 1, 0x1, 0x10054);
	add_basicblock(p_integrated_CFG, 0x10054, 1, 0x1, 0x10055);
	add_basicblock(p_integrated_CFG, 0x10055, 1, 0x1, 0x10056);
	add_basicblock(p_integrated_CFG, 0x10056, 1, 0x1, 0x10057);
	add_basicblock(p_integrated_CFG, 0x10057, 1, 0x1, 0x10058);
	add_basicblock(p_integrated_CFG, 0x10058, 1, 0x1, 0x10059);
	add_basicblock(p_integrated_CFG, 0x10059, 1, 0x1, 0x1005a);
	add_basicblock(p_integrated_CFG, 0x1005a, 1, 0x1, 0x1005b);
	add_basicblock(p_integrated_CFG, 0x1005b, 2, 0x2, 0x1005c);
	add_basicblock(p_integrated_CFG, 0x1005b, 2, 0x2, 0x1005f);
	add_basicblock(p_integrated_CFG, 0x1005c, 1, 0x1, 0x1005d);
	add_basicblock(p_integrated_CFG, 0x1005d, 1, 0x1, 0x1005e);
	add_basicblock(p_integrated_CFG, 0x1005e, 1, 0x1, 0x10064);
	add_basicblock(p_integrated_CFG, 0x1005f, 1, 0x1, 0x10060);
	add_basicblock(p_integrated_CFG, 0x10060, 1, 0x1, 0x10061);
	add_basicblock(p_integrated_CFG, 0x10061, 1, 0x1, 0x10062);
	add_basicblock(p_integrated_CFG, 0x10062, 1, 0x1, 0x10063);
	add_basicblock(p_integrated_CFG, 0x10063, 1, 0x1, 0x10064);
	add_basicblock(p_integrated_CFG, 0x10064, 1, 0x1, 0x10065);
	add_basicblock(p_integrated_CFG, 0x10065, 1, 0x1, 0x10066);
	add_basicblock(p_integrated_CFG, 0x10066, 4, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x10066, 4, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x60001, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x60001, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x70001, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x70001, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x80001, 1, 0x1, 0x80002);
	add_basicblock(p_integrated_CFG, 0x80002, 3, 0x2, 0xb0001);
	add_basicblock(p_integrated_CFG, 0x80002, 3, 0x2, 0x80003);
	add_basicblock(p_integrated_CFG, 0x80003, 2, 0x2, 0x80004);
	add_basicblock(p_integrated_CFG, 0x80003, 2, 0x2, 0x80006);
	add_basicblock(p_integrated_CFG, 0x80004, 3, 0x2, 0xc0001);
	add_basicblock(p_integrated_CFG, 0x80004, 3, 0x2, 0x80005);
	add_basicblock(p_integrated_CFG, 0x80005, 3, 0x2, 0xe0001);
	add_basicblock(p_integrated_CFG, 0x80005, 3, 0x2, 0x80007);
	add_basicblock(p_integrated_CFG, 0x80006, 1, 0x1, 0x80007);
	add_basicblock(p_integrated_CFG, 0x80007, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x80007, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x90001, 1, 0x1, 0x90002);
	add_basicblock(p_integrated_CFG, 0x90002, 2, 0x2, 0x90003);
	add_basicblock(p_integrated_CFG, 0x90002, 2, 0x2, 0x90004);
	add_basicblock(p_integrated_CFG, 0x90003, 1, 0x1, 0x90004);
	add_basicblock(p_integrated_CFG, 0x90004, 1, 0x1, 0x90005);
	add_basicblock(p_integrated_CFG, 0x90005, 2, 0x2, 0x90002);
	add_basicblock(p_integrated_CFG, 0x90005, 2, 0x2, 0x90006);
	add_basicblock(p_integrated_CFG, 0x90006, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x90006, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0xb0001, 2, 0x2, 0xb0002);
	add_basicblock(p_integrated_CFG, 0xb0001, 2, 0x2, 0xb0003);
	add_basicblock(p_integrated_CFG, 0xb0002, 1, 0x1, 0xb0003);
	add_basicblock(p_integrated_CFG, 0xb0003, 3, 0x2, 0xe0001);
	add_basicblock(p_integrated_CFG, 0xb0003, 3, 0x2, 0xb0004);
	add_basicblock(p_integrated_CFG, 0xb0004, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0xb0004, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0xc0001, 3, 0x2, 0xd0001);
	add_basicblock(p_integrated_CFG, 0xc0001, 3, 0x2, 0xc0002);
	add_basicblock(p_integrated_CFG, 0xc0002, 2, 0x2, 0xc0004);
	add_basicblock(p_integrated_CFG, 0xc0002, 2, 0x2, 0xc0003);
	add_basicblock(p_integrated_CFG, 0xc0003, 1, 0x1, 0xc0004);
	add_basicblock(p_integrated_CFG, 0xc0004, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0xc0004, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0xd0001, 2, 0x2, 0xd0002);
	add_basicblock(p_integrated_CFG, 0xd0001, 2, 0x2, 0xd0003);
	add_basicblock(p_integrated_CFG, 0xd0002, 1, 0x1, 0xd0004);
	add_basicblock(p_integrated_CFG, 0xd0003, 1, 0x1, 0xd0004);
	add_basicblock(p_integrated_CFG, 0xd0004, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0xd0004, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0xe0001, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0xe0001, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0xf0001, 1, 0x1, 0xf0002);
	add_basicblock(p_integrated_CFG, 0xf0002, 2, 0x2, 0xf0003);
	add_basicblock(p_integrated_CFG, 0xf0002, 2, 0x2, 0xf0005);
	add_basicblock(p_integrated_CFG, 0xf0003, 1, 0x1, 0xf0004);
	add_basicblock(p_integrated_CFG, 0xf0004, 1, 0x1, 0xf0002);
	add_basicblock(p_integrated_CFG, 0xf0005, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0xf0005, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x100001, 2, 0x2, 0x100002);
	add_basicblock(p_integrated_CFG, 0x100001, 2, 0x2, 0x100003);
	add_basicblock(p_integrated_CFG, 0x100002, 1, 0x1, 0x100004);
	add_basicblock(p_integrated_CFG, 0x100003, 1, 0x1, 0x100004);
	add_basicblock(p_integrated_CFG, 0x100004, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x100004, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x110001, 1, 0x1, 0x110002);
	add_basicblock(p_integrated_CFG, 0x110002, 2, 0x2, 0x110003);
	add_basicblock(p_integrated_CFG, 0x110002, 2, 0x2, 0x110007);
	add_basicblock(p_integrated_CFG, 0x110003, 3, 0x2, 0x100001);
	add_basicblock(p_integrated_CFG, 0x110003, 3, 0x2, 0x110004);
	add_basicblock(p_integrated_CFG, 0x110004, 2, 0x2, 0x110005);
	add_basicblock(p_integrated_CFG, 0x110004, 2, 0x2, 0x110006);
	add_basicblock(p_integrated_CFG, 0x110005, 1, 0x1, 0x110006);
	add_basicblock(p_integrated_CFG, 0x110006, 1, 0x1, 0x110002);
	add_basicblock(p_integrated_CFG, 0x110007, 2, 0x2, 0x110008);
	add_basicblock(p_integrated_CFG, 0x110007, 2, 0x2, 0x11000a);
	add_basicblock(p_integrated_CFG, 0x110008, 2, 0x2, 0x110009);
	add_basicblock(p_integrated_CFG, 0x110008, 2, 0x2, 0x11000a);
	add_basicblock(p_integrated_CFG, 0x110009, 1, 0x1, 0x11000a);
	add_basicblock(p_integrated_CFG, 0x11000a, 2, 0x2, 0x11000b);
	add_basicblock(p_integrated_CFG, 0x11000a, 2, 0x2, 0x11000c);
	add_basicblock(p_integrated_CFG, 0x11000b, 1, 0x1, 0x110010);
	add_basicblock(p_integrated_CFG, 0x11000c, 1, 0x1, 0x11000d);
	add_basicblock(p_integrated_CFG, 0x11000d, 2, 0x2, 0x11000e);
	add_basicblock(p_integrated_CFG, 0x11000d, 2, 0x2, 0x11000f);
	add_basicblock(p_integrated_CFG, 0x11000e, 1, 0x1, 0x110010);
	add_basicblock(p_integrated_CFG, 0x11000f, 1, 0x1, 0x110010);
	add_basicblock(p_integrated_CFG, 0x110010, 0, 0x2, 0x0);
	add_basicblock(p_integrated_CFG, 0x110010, 0, 0x2, 0x0);

	return;
}

INTEGRATED_CFG* generate_path_tree()
{
	p_integrated_CFG = (INTEGRATED_CFG* )malloc(sizeof(INTEGRATED_CFG));
	init(p_integrated_CFG);
	BBNode* p_bb_init = (BBNode*)malloc(sizeof(BBNode));
	p_bb_init->node_id = leverage_signature;
	p_bb_init->connectionType = 1;
	p_bb_init->connectionNum = 1;
	p_bb_init->connectionArr = (unsigned int*)malloc(sizeof(unsigned int) * p_bb_init->connectionNum);
	p_bb_init->connectionArr[0] = 0x10001;
	insert(p_integrated_CFG, p_bb_init);

	return p_integrated_CFG;
}

