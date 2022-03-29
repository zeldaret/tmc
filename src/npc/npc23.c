#include "entity.h"
#include "player.h"
#include "structures.h"
#include "functions.h"
#include "message.h"
#include "npc.h"

extern void (*const gUnk_081104C8[])(Entity*);

bool32 sub_0806650C(Entity*);

void sub_08066490(Entity*, Entity*);

void sub_08066570(Entity* this);

void NPC23(Entity* this) {
    gUnk_081104C8[this->action](this);
    sub_0806ED78(this);
}

void sub_080662F8(Entity* this) {
    this->action = 1;
    this->subAction = 0;
    this->spriteSettings.draw = 1;
    this->animationState = this->type << 1;
    InitializeAnimation(this, this->type);
    this->field_0x7c.HALF.HI = this->x.HALF.HI;
    this->field_0x80.HWORD = this->y.HALF.HI;
    this->field_0x86.HWORD = 0;
    this->field_0x82.HWORD = this->timer;
    this->parent = &gPlayerEntity;
    this->cutsceneBeh.HWORD = 0;
    sub_08066490(this, this->parent);
    sub_08078778(this);
}

void sub_08066358(Entity* this) {
    if (this->interactType != 0) {
        this->interactType = 0;
        MessageFromTarget(0);
        if ((this->type2 & 0x10) != 0) {
            this->action = 3;
            this->subAction = 0;
            if ((this->field_0x7c.HALF_U.HI - this->x.HALF.HI) > 8) {
                this->direction = 8;
            } else {
                this->direction = 0x18;
            }
            this->speed = 0x80;
            this->cutsceneBeh.HWORD = 1;
            gPauseMenuOptions.disabled = 1;
            sub_080788E0(this);
        }
    } else {
        sub_08066490(this, this->parent);
    }
    GetNextFrame(this);
    sub_08066570(this);
}

void nullsub_110(void) {
}

void sub_080663D4(Entity* this) {
    if (this->x.HALF.HI == this->field_0x7c.HALF_U.HI - 8) {
        if (gPlayerEntity.action != PLAYER_080720DC) {
            this->action = 4;
            this->direction = 0;
            this->speed = 0;
            this->cutsceneBeh.HWORD = 0;
            InitializeAnimation(this, 2);
        }
    } else {
        if (this->subAction == 0) {
            InitializeAnimation(this, (this->direction >> 3) + 4);
            this->subAction = this->subAction + 1;
        }
        ProcessMovement0(this);
    }
    sub_08078B48();
    GetNextFrame(this);
}

void sub_0806643C(Entity* this) {
    bool32 tmp = sub_0806650C(this);
    if (tmp == FALSE) {
        this->action = 5;
        gRoomControls.camera_target = NULL;
        sub_08078AC0(0x40, 0, 0);
        gPlayerEntity.animationState = 0;
        gPlayerEntity.direction = 0;
    }
    GetNextFrame(this);
}

void sub_08066474(void) {
    if (gPlayerEntity.action != PLAYER_080720DC) {
        gPauseMenuOptions.disabled = 0;
    }
}

ASM_FUNC("asm/non_matching/npc23/sub_08066490.inc", void sub_08066490(Entity* this, Entity* entity))

ASM_FUNC("asm/non_matching/npc23/sub_0806650C.inc", bool32 sub_0806650C(Entity* this))

ASM_FUNC("asm/non_matching/npc23/sub_08066570.inc", void sub_08066570(Entity* this))
