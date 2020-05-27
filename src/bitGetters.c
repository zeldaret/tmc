#include "global.h"

extern u8 gUnk_02033A90;

u32 sub_08052654()
{
    return (gUnk_02033A90 >> 7) & 1;
}

u32 sub_08052660()
{
    return (gUnk_02033A90 >> 2) & 1;
}

u32 sub_08052670()
{
    return (gUnk_02033A90 >> 4) & 1;
}

u32 sub_08052680()
{
    return (gUnk_02033A90 >> 6) & 1;
}

u32 sub_08052690()

{
    return (gUnk_02033A90 >> 3) & 1;
}