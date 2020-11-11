#include "global.h"
#include "entity.h"
#include "enemy.h"
#include "functions.h"
#include "flags.h"

extern void sub_08038168(Entity*);

extern void (*const gUnk_080CF4A0)(Entity*);
extern void (*const gUnk_080CF4B8[])(Entity*);

void TektiteGolden(Entity* this) {
    EnemyFunctionHandler(this, &gUnk_080CF4A0);
    SetChildOffset(this, 0, 1, -0x10);
}

void sub_08037EE8(Entity* this) {
    gUnk_080CF4B8[this->action](this);
}

void sub_08037F00(Entity* this) {
    u32 uVar1;

    if (this->field_0x43 != 0) {
        sub_0804A9FC(this, 0x1c);
    }
    sub_0804AA30(this, &gUnk_080CF4A0);
    if (this->bitfield == 0x94) {
        this->action = 1;
        this->previousActionFlag = 0;
        this->actionDelay = 0x14;
        this->field_0xf = 0;
        this->field_0x80.HALF.LO = 0;
        if (this->height.HALF.HI != 0) {
            this->field_0x20 >>= 2;
        } else {
            this->field_0x20 = 0;
        }

        InitializeAnimation(this, 0);
    }
}

void sub_08037F58(Entity* this) {
    u32 uVar1;

    if ((this->field_0x3a & 2) == 0) {
        SetGlobalFlag(this->entityType.parameter);
    }
    if ((this->entityType).form != 0) {
        uVar1 = 0x59;
    } else {
        uVar1 = 0x58;
    }
    CreateDeathFx(this, 0xff, uVar1);
}

void sub_08037F84(Entity* this) {
    sub_08001242(this);
    if (this->height.HALF.HI != 0) {
        sub_08003FC4(this, 0x3000);
    }
}

void sub_08037FA0(Entity* this) {

    if (CheckGlobalFlag(this->entityType.parameter)) {
        DeleteThisEntity();
    }
    sub_0804A720(this);
    this->action = 1;
    this->previousActionFlag = 0;
    this->actionDelay = (Random() & 0x1f) + 0x20;
    this->field_0xf = 0;
    this->field_0x80.HALF.LO = 0;
    InitializeAnimation(this, 0);
}

void sub_08037Fe0(Entity* this) {
    UpdateAnimationVariableFrames(this, 2);
    if (this->actionDelay != 0) {
        this->actionDelay--;
    } else if (this->field_0xf != 0) {
        if ((this->frames.b.f3) != 0) {
            this->action = 2;
            this->actionDelay = 6;
            this->field_0xf = 0;
            this->field_0x20 = 0x38000;
            sub_08038168(this);
            InitializeAnimation(this, 2);
        }
    } else if ((this->frames.b.f3) != 0) {
        this->field_0xf = 0x40;
        InitializeAnimation(this, 1);
    }
}

void sub_08038048(Entity* this) {
    s32 temp;
    u32 rand;

    UpdateAnimationVariableFrames(this, 2);
    ProcessMovement(this);
    temp = this->height.HALF.HI;
    rand = Random() & 0xf;

    if (sub_080044EC(this, 0x3000) == 1) {
        this->action = 3;
        this->previousActionFlag = 0;
        this->actionDelay = 0x14;
        InitializeAnimation(this, 3);
        return;
    } else if (this->collisions != 0) {
        sub_0800417E(this, this->collisions);
    } else if ((sub_080002B8(this) & 0xf0) == 0x50) {
        this->direction = (this->direction + 0x10) & 0x1f;
    }

    if (--this->actionDelay == 0) {
        this->actionDelay = rand + 0x10;
        sub_08038168(this);
    }

    if ((this->previousActionFlag == 0) && (temp < this->height.HALF.HI)) {
        InitializeAnimation(this, 4);
        this->previousActionFlag = 1;
    }

    if (temp < -0xc) {
        this->spriteRendering.b3 = 1;
        this->spriteOrientation.flipY = 1;
    } else {
        this->spriteRendering.b3 = 2;
        this->spriteOrientation.flipY = 2;
    }
}

void sub_08038110(Entity* this) {
    UpdateAnimationVariableFrames(this, 2);
    if ((this->frames.b.f3) != 0) {
        if (this->field_0x80.HALF.LO < 5) {
            this->action = 2;
            this->actionDelay = 8;
            this->field_0x20 = 0x38000;
            sub_08038168(this);
            InitializeAnimation(this, 2);
        } else {
            this->action = 1;
            this->field_0x80.HALF.LO = 0;
            this->actionDelay = 0xc0;
            InitializeAnimation(this, 0);
        }
    }
}

void sub_08038168(Entity* this) {
    u32 temp;

    if (sub_08049FA0(this) == 0) {
        this->direction = sub_08049EE4(this);
    } else if (sub_08049FDC(this, 1) != 0) {
        this->direction = sub_08049F84(this, 1);
    } else {
        temp = (Random() & 0xf) + 0x18;
        this->direction = (temp + this->direction) & 0x1f;
    }
}
