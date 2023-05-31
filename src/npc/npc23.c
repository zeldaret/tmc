#include "entity.h"
#include "player.h"
#include "structures.h"
#include "functions.h"
#include "message.h"
#include "npc.h"

bool32 sub_0806650C(Entity*);

void sub_08066490(Entity*, Entity*);

void sub_08066570(Entity* this);
void sub_080662F8(Entity* this);
void sub_08066358(Entity* this);
void nullsub_110(Entity* this);
void sub_080663D4(Entity* this);
void sub_0806643C(Entity* this);
void sub_08066474(Entity* this);

void NPC23(Entity* this) {
    static void (*const actionFuncs[])(Entity*) = {
        sub_080662F8, sub_08066358, nullsub_110, sub_080663D4, sub_0806643C, sub_08066474,
    };
    actionFuncs[this->action](this);
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
    AddInteractableWhenBigObject(this);
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
            RemoveInteractableObject(this);
        }
    } else {
        sub_08066490(this, this->parent);
    }
    GetNextFrame(this);
    sub_08066570(this);
}

void nullsub_110(Entity* this) {
}

void sub_080663D4(Entity* this) {
    if (this->x.HALF.HI == this->field_0x7c.HALF_U.HI - 8) {
        if (gPlayerEntity.action != PLAYER_ROOM_EXIT) {
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

void sub_08066474(Entity* this) {
    if (gPlayerEntity.action != PLAYER_ROOM_EXIT) {
        gPauseMenuOptions.disabled = 0;
    }
}

NONMATCH("asm/non_matching/npc23/sub_08066490.inc", void sub_08066490(Entity* this, Entity* entity)) {
    u32 uVar1;
    u32 uVar2;
    u32 uVar3;
    u32 uVar4;

    if ((this->type2 & 0x10) != 0) {
        this->field_0x86.HWORD = this->x.HALF.HI;
        uVar2 = this->field_0x7c.HALF_U.HI;
        uVar3 = uVar2 + this->field_0x82.HWORD;
        uVar4 = uVar2 - this->field_0x82.HWORD;
        if (((entity->x.HALF.HI < (int)uVar3) && (entity->x.HALF.HI > (int)uVar4))) {
            uVar2 = entity->x.HALF.HI;
        } else {
            if (entity->x.HALF.HI >= (int)uVar3) {
                uVar2 = uVar3;
            } else {
                uVar2 = uVar4;
            }
        }

        if (this->field_0x86.HWORD == uVar2) {
            if (this->cutsceneBeh.HWORD == 1) {
                this->cutsceneBeh.HWORD = 0;
                InitializeAnimation(this, 2);
            }
        } else {
            this->x.HALF.HI = (short)uVar2;
            if (this->cutsceneBeh.HWORD == 0) {
                this->cutsceneBeh.HWORD = 1;
                InitializeAnimation(this, 6);
            }
        }
    }
}
END_NONMATCH

bool32 sub_0806650C(Entity* this) {
    u32 dir = 0;
    s32 px = gPlayerEntity.x.HALF_U.HI;
    s32 px2 = px;
    s32 py = gPlayerEntity.y.HALF_U.HI;

    if (py < this->field_0x80.HWORD + 16) {
        dir = 4;
    } else {
        if (px < this->field_0x7c.HALF_U.HI + 2) {
            dir = 2;
        }
        if (px2 > this->field_0x7c.HALF_U.HI + 6) {
            dir = 6;
        }
        if (dir == 0) {
            gPlayerEntity.speed = 0;
        }
    }

    if (gPlayerEntity.action != PLAYER_ROOM_EXIT) {
        if (dir == 0) {
            return 0;
        }
        sub_08078AC0(8, 0, 0);
        gPlayerEntity.animationState = dir;
        gPlayerEntity.direction = Direction8FromAnimationState(dir);
    }
    return 1;
}

void sub_08066570(Entity* this) {
    u32 direction;
    s32 tmp;
    u32 dir1, dir2;
    bool32 cond;
    if ((this->frame & ANIM_DONE) == 0) {
        return;
    }

    if (this->action == 3 || !sub_0806FC80(this, &gPlayerEntity, 0x50)) {
        return;
    }

    direction = GetFacingDirection(this, &gPlayerEntity);
    cond = TRUE;

    dir2 = (direction & 0x18);
    dir1 = (this->direction & 0x18);
    tmp = 0x18;
    if (dir1 == dir2) {
        dir1 = (direction + 5) & 7;
        dir2 = (this->direction + 5) & 7;
        if (dir2 < 3 && dir1 < 3) {
            cond = FALSE;
        }
    }
    if (cond) {
        this->direction = direction;
        direction += 4;
        direction &= tmp;
        direction >>= 3;
        InitializeAnimation(this, direction);
    }
}
