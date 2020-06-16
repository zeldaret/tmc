#include "global.h"
#include "functions.h"
#include "entity.h"

extern void sub_0807DDAC(Entity*, u32);
extern void sub_0807DDE4(Entity*);
extern void UpdateAnimationSingleFrame(Entity*);
extern void sub_0806ED78(Entity*);
extern void PlaySFX(u32);

extern void (*gUnk_08112260[])(Entity*);
extern void (*gUnk_08112278[])(Entity*);

void sub_0806A358(Entity* this) {
    gUnk_08112260[this->entityType.parameter1](this);
}

void sub_0806a370(Entity* this) {
    u8* pbVar1;

    gUnk_08112278[this->action](this);
    sub_0807DDAC(this, 0);
    sub_0807DDE4(this);
    UpdateAnimationSingleFrame(this);
    sub_0806ED78(this);
    if (this->field_0x58 == 0xf) {
        pbVar1 = &this->frames.all;
        if (*pbVar1 == 1) {
            *pbVar1 = 0;
            PlaySFX(0x218);
        }
        if (*pbVar1 == 2) {
            *pbVar1 = 0;
            PlaySFX(0x219);
        }
    }
}