#include "global.h"
#include "entity.h"

extern void sub_0807C960();
extern u32 gUnk_0202CEB4;
extern u32 gUnk_02012654;
extern u8 gUnk_08324AE4;

void sub_0807C960(void* dest, u32 offset)
{
    void* temp;

  if (offset != -1) {
      temp = &gUnk_08324AE4 + (offset & 0x7fffffff);
    if ((u32)dest >> 0x18 == 6) {
      LZ77UnCompVram(temp, (void *)dest);
    }
    else {
      LZ77UnCompWram(temp, (void *)dest);
    }
  }
}

void sub_0807C998(u32* a1) {
    sub_0807C960(&gUnk_0202CEB4, a1[0]);
    sub_0807C960(&gUnk_0202CEB4 - 0x800, a1[1]);
    sub_0807C960(&gUnk_02012654, a1[2]);
    sub_0807C960(&gUnk_02012654 - 0x800, a1[3]);
}
