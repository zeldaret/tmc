
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
    if (gPlayerState.dash_state != 0) {
        gPlayerState.item = this;
        this->flags |= ENT_PERSIST;
        this->action = 0x01;
        this->flags2 = 8;
        LoadSwapGFX(this, 1, 3);
        sub_08079BD8(this);
        sub_0801766C(this);
        sub_0801B8FC(this);
    } else {
        DeleteThisEntity();
    }
}

void sub_0801B8FC(Entity* this) {
    Entity* pbVar1;
    pbVar1 = (Entity*)gPlayerState.item;
    if ((Entity*)gPlayerState.item != this) {
        DeleteThisEntity();
    } else {
        if (gPlayerState.dash_state == 0) {
            gPlayerState.item = NULL;
            DeleteThisEntity();
        } else {
            pbVar1->flags |= ENT_COLLIDE;
            pbVar1->field_0x3c = 0x21;
            sub_0801B938(pbVar1);
        }
    }
}

ASM_FUNC("asm/non_matching/playerItemC/sub_0801B938.inc", void sub_0801B938(Entity* this))

void sub_0801B9F0(Entity* this) {
    COLLISION_OFF(this);
    sub_08017744(this);
}
