// macro helpers
#define WORD_TO_SHORTS(word, b) word, b

// script commands
#define START_EXECUTING_SCRIPTS() 0x0401,
#define STOP_EXECUTING_SCRIPTS() 0x0402,
#define CHECK_KINSTONE_FUSED(id) 0x081d, id,
#define JUMP_IF_TRUE(offset) 0x0804, offset,
#define sub_0807E6AC(word, b) 0x0c33, WORD_TO_SHORTS(word, b),
#define sub_0807EF80(param) 0x0879, param,
#define sub_0807E680(param) 0x0831, param,
#define sub_0807EBC0(param) 0x0867, param,
#define sub_0807ECF4(param) 0x0871, param,
#define sub_0807E680(param) 0x0831, param,
#define sub_0807EF80(param) 0x0879, param,
#define sub_0807E5F8(a, b) 0x0c28, a, b,
const unsigned short gUnk_08016030[] = {
    // clang-format off
    START_EXECUTING_SCRIPTS()
    CHECK_KINSTONE_FUSED(9)
    JUMP_IF_TRUE(0x2a)
    STOP_EXECUTING_SCRIPTS()
    sub_0807E6AC(0x0001,0x0000)
    sub_0807EF80(0x0010)
    sub_0807E680(0x003c)
    sub_0807EBC0(0x0020)
    sub_0807ECF4(0x0080)
    sub_0807E680(0x001e)
    sub_0807EF80(0x0010)
    sub_0807E5F8(0x0008, 0x0000)
    // clang-format on
    0xffff,
    0x0c6a,
    0xfff0,
    0x0000,
    0xffff,
    0x0000
};
