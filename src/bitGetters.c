#include "global.h"

extern u8 gArea;

u32 sub_08052654()
{
    return (gArea >> 7) & 1;
}

u32 CheckIsDungeon()
{
    return (gArea >> 2) & 1;
}

u32 sub_08052670()
{
    return (gArea >> 4) & 1;
}

u32 sub_08052680()
{
    return (gArea >> 6) & 1;
}

u32 sub_08052690()

{
    return (gArea >> 3) & 1;
}
