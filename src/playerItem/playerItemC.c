
#include "entity.h"
#include "player.h"
#include "functions.h"

extern void (*const gUnk_080B7840[])(Entity*);

extern void sub_08079BD8(Entity*);
void sub_0801B8FC(Entity*);

void sub_0801B938(Entity*);

extern void sub_08017744(Entity*);

void PlayerItemC(Entity* this) {
    gUnk_080B7840[this->action](this);
}

void sub_0801B8B0(Entity* this) {
    if (gPlayerState.field_0x1d[1] != 0) {
        gPlayerState.field_0x2c = (u8*)this;
        this->flags |= 0x20;
        this->action = 0x01;
        this->flags2 = 8;
        sub_080AE008(this, 1, 3);
        sub_08079BD8(this);
        sub_0801766C(this);
        sub_0801B8FC(this);
    } else {
        DeleteThisEntity();
    }
}

NONMATCH("asm/non_matching/playerItemC/sub_0801B8FC.inc", void sub_0801B8FC(Entity* this)) {
    Entity* pbVar1;
    u32 tmp;

    pbVar1 = (Entity*)gPlayerState.field_0x2c;
    if ((Entity*)gPlayerState.field_0x2c != this) {
        DeleteThisEntity();
    } else {
        if ((u8*)(u32)gPlayerState.field_0x1d[1] == NULL) {
            gPlayerState.field_0x2c = (u8*)(u32)gPlayerState.field_0x1d[1];
            DeleteThisEntity();
        } else {
            // TODO regalloc
            gPlayerState.field_0x2c[0x10] |= 0x80;
            pbVar1->field_0x3c = 0x21;
            sub_0801B938(pbVar1);
        }
    }
}
END_NONMATCH

ASM_FUNC("asm/non_matching/playerItemC/sub_0801B938.inc", void sub_0801B938(Entity* this))

void sub_0801B9F0(Entity* this) {
    COLLISION_OFF(this);
    sub_08017744(this);
}
