#include "global.h"
#include "functions.h"
#include "entity.h"

extern void sub_0807DDAC(Entity*, u32);
extern void sub_0807DDE4(Entity*);
extern void PlaySFX(u32);
extern void sub_0806A8C8(Entity*);
extern void sub_0807DD94(Entity*, u32);

extern void (*gUnk_08112260[])(Entity*);
extern void (*gUnk_08112278[])(Entity*);

extern void gUnk_08012F0C;

void Rem(Entity* this) {
    gUnk_08112260[this->entityType.form](this);
}

void sub_0806a370(Entity* this) {
    u8* pbVar1;

    gUnk_08112278[this->action](this);
    sub_0807DDAC(this, 0);
    sub_0807DDE4(this);
    UpdateAnimationSingleFrame(this);
    sub_0806ED78(this);
    if (this->animIndex == 0xf) {
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

void sub_0806A3D8(Entity* this) {
    u32* uVar1;

    this->action = 1;
    this->actionDelay = 0xb4;
    sub_0805E3A0(this, 2);
    sub_0806A8C8(this);
    uVar1 = StartCutscene(this, &gUnk_08012F0C);
    *(u32*)&this->cutsceneBeh = (u32)uVar1;
    sub_0807DD94(this, 0);
}
