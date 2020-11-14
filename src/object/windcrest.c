#include "global.h"
#include "entity.h"
#include "functions.h"

extern void sub_0807DD64(Entity*);
extern void sub_0807DDAC(Entity*, u32);
extern void sub_0807DDE4(Entity*);
extern void sub_08078850(Entity*, u32, u32, u8*);
extern void PlaySFX(u32);
extern Entity* CreateFx(Entity*, u32, u32);

extern u8 gUnk_08125010;

void Windcrest(Entity* this) {
    if (this->action == 0) {
        this->action++;
        this->frameIndex = 0;
        sub_0807DD64(this);
    }
    sub_0807DDAC(this, 0);
    sub_0807DDE4(this);
}

void sub_080A2124(Entity* this) {
    sub_08078850(this, 1, 0xe, &gUnk_08125010);
}

void Windcrest_Unlock(Entity* this) {
    PlaySFX(0x72);
    gUnk_02002A40.windcrests = gUnk_02002A40.windcrests | 1 << (this->entityType.parameter + 0x18);
    CreateFx(this, 0x46, 0);
}
