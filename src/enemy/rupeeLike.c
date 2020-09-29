#include "global.h"
#include "entity.h"
#include "enemy.h"
#include "functions.h"
#include "npc.h"
#include "structures.h"
#include "player.h"

extern void sub_080293DC(Entity*);
extern void sub_080296D8(Entity*);
extern void sub_08029770(Entity*);
extern void sub_080297F0(Entity*);
extern void sub_080296C8(Entity*);
extern void sub_0802969C(Entity*);

extern void (*const gUnk_080CCC00[])(Entity*);
extern void (*const gUnk_080CCC18[])(Entity*);
extern void (*const gUnk_080CCC3C[])(Entity*);

extern const u8 gUnk_080CCC34[];
extern const s8 gUnk_080CCC44[];
extern const u8 gUnk_080CCC47[];
extern BoundingBox gUnk_080FD260;

void RupeeLike(Entity* this) {
    u32 uVar1;

    if (this->entityType.parameter == 0) {
        uVar1 = (u8)sub_080043E8(this);
        if (uVar1 != 0) {
            if (this->action == 4) {
                sub_080296D8(this);
            }
            sub_08001290(this, uVar1);
        } else {
            gUnk_080CCC00[GetNextFunction(this)](this);
            SetChildOffset(this, 0, 1, -0x10);
        }
    } else {
        sub_080293DC(this);
    }
}

void sub_08029300(Entity* this) {
    gUnk_080CCC18[this->action](this);
}

void sub_08029318(Entity* this) {
    if (this->damageType == 0x8e) {
        sub_08029770(this);
    } else {
        if (this->action == 4) {
            sub_080296D8(this);
        }
        if (*(u8*)(*(u32*)&this->field_0x4c + 8) == 1) {
            if (this->action == 2) {
                InitializeAnimation(this, 0);
                InitializeAnimation(this->attachedEntity, 4);
            }
            this->action = 4;
            this->actionDelay = 0x3c;
            this->field_0xf = 0;
            this->field_0x82.HALF.HI = 0x41;
            this->flags2 &= 0xfc;
            this->field_0x80.HALF.LO = gPlayerEntity.spritePriority.b1;
            EnqueueSFX(0x104);
        } else {
            if (this->field_0x43 != 0) {
                sub_0804A9FC(this, 0x1c);
            }
        }
    }
    sub_0804AA30(this, gUnk_080CCC00);
}

void sub_080293B4(Entity* this) {
    CreateDeathFx(this, 0xff, gUnk_080CCC34[this->cutsceneBeh.HALF.LO * 3 + this->entityType.form]);
}

void nullsub_141() {
}

void sub_080293DC(Entity* this) {
    CopyPositionAndSpriteOffset(this->parent, this);
    this->y.HALF.HI++;
    this->height.HALF.HI--;
    gUnk_080CCC3C[this->action](this);
}

void sub_0802940C(Entity* this) {
    Entity* ent;

    ent = CreateEnemy(0x17, this->entityType.form);
    if (ent != NULL) {
        sub_0804A720(this);
        ent->parent = this;
        ent->entityType.parameter = 1;
        this->attachedEntity = ent;
        this->field_0x80.HALF.HI = 0;
        this->cutsceneBeh.HALF.LO = 0;
        this->field_0x82.HALF.LO = this->palette.b.b0;
        sub_080297F0(this);
    }
}

void sub_0802944C(Entity* this) {
    sub_080296C8(this);
    if ((this->field_0x80.HALF.HI != 0) && sub_08049FDC(this, 1)) {
        sub_08029770(this);
    }
}

void sub_08029474(Entity* this) {
    u32 bVar1;

    sub_080296C8(this);
    if (this->frames.b.f3) {
        this->action = 3;
        this->actionDelay = 8;
        bVar1 = GetFacingDirection(this, &gPlayerEntity);
        this->direction = bVar1;
        this->animationState = (bVar1 << 0x18) >> 0x1c;
        InitializeAnimation(this, this->animationState);
        InitializeAnimation(this->attachedEntity, this->animationState + 4);
    } else {
        if (this->frames.all == 1) {
            this->frames.all = 0;
            this->flags |= 0x80;
        }
    }
}

void sub_080294D4(Entity* this) {
    if (sub_08049FDC(this, 1) != 0) {
        if (--this->actionDelay == 0) {
            this->actionDelay = 8;
            sub_08004596(this, GetFacingDirection(this, &gPlayerEntity));
            sub_0802969C(this);
        }
        ProcessMovement(this);
        sub_080296C8(this);
    } else {
        this->action = 6;
        this->flags &= 0x7f;
        InitializeAnimation(this, 3);
        InitializeAnimation(this->attachedEntity, 7);
    }
}

void sub_0802953C(Entity* this) {
    u8* pbVar3;

    sub_080296C8(this);
    sub_080296C8(this);
    if (sub_0807953C() != 0) {
        this->field_0xf++;
    }
    if (this->actionDelay != 0) {
        this->actionDelay--;
    }
    if (((this->field_0xf > 0x2d) || (gUnk_02002A40.stats.rupees == 0)) && (this->actionDelay == 0)) {
        sub_080296D8(this);
    } else {
        ResetPlayer();
        gPlayerState.field_0x1a[0] |= 0x80;
        PositionRelative(this, &gPlayerEntity, 0, 0x10000);
        pbVar3 = GetSpriteSubEntryOffsetDataPointer((u16)this->spriteIndex, this->frameIndex);
        gPlayerEntity.spriteOffsetX = pbVar3[0];
        gPlayerEntity.spriteOffsetY = pbVar3[1] - 1;
        gPlayerEntity.spritePriority.b1 = 0;
        if (--this->field_0x82.HALF.HI == 0) {
            this->field_0x82.HALF.HI = 0x41;
            if (gUnk_02002A40.stats.rupees != 0) {
                ModRupees(gUnk_080CCC44[this->entityType.form]);
                this->cutsceneBeh.HALF.LO = 1;
            }
        }
    }
}

void sub_08029610(Entity* this) {
    if (--this->field_0xf == 0) {
        this->action = 3;
        this->actionDelay = 1;
    }
    sub_080296C8(this);
}

void sub_08029630(Entity* this) {
    sub_080296C8(this);
    if ((this->frames.b.f3) != 0) {
        this->field_0x80.HALF.HI = 1;
        this->attachedEntity->spriteSettings.b.draw = FALSE;
        sub_080297F0(this);
    }
}

void sub_08029660(Entity* this) {
    u32 temp;
    this->action = 1;
    this->spriteIndex = 0xd1;
    temp = gUnk_080CCC47[this->entityType.form];
    this->palette.b.b0 = temp;
}

void sub_08029688(Entity* this) {
    if (this->parent->next == NULL) {
        DeleteEntity(this);
    }
}

void sub_0802969C(Entity* this) {
    u32 bVar1;

    if ((this->direction & 0xf) != 0) {

        bVar1 = this->direction >> 4;
        if (bVar1 != this->animationState) {
            this->animationState = bVar1;
            InitializeAnimation(this, bVar1);
            InitializeAnimation(this->attachedEntity, bVar1 + 4);
        }
    }
}

void sub_080296C8(Entity* this) {
    GetNextFrame(this);
    GetNextFrame(this->attachedEntity);
}

void sub_080296D8(Entity* this) {
    gPlayerState.jumpStatus = 0x41;
    gPlayerState.flags.all &= 0xffffffef;
    gPlayerEntity.flags |= 0x80;
    gPlayerEntity.field_0x20 = 0x18000;
    gPlayerEntity.hurtBlinkTime = 0xa6;
    gPlayerEntity.height.HALF.HI = -2;
    gPlayerEntity.direction = gPlayerEntity.animationState << 2;
    gPlayerEntity.spritePriority.b1 = this->field_0x80.HALF.LO;
    gPlayerEntity.spriteOffsetY = 0;
    gPlayerEntity.nonPlanarMovement = 0x140;
    this->action = 5;
    this->field_0xf = 0x3c;
    this->flags2 |= 3;
    if ((s8)this->hurtBlinkTime == 0) {
        this->hurtBlinkTime = 0xf4;
    }
}

void sub_08029770(Entity* this) {
    u32 temp;
    if (LoadFixedGFX(this, 0x73) != 0) {
        this->action = 2;
        this->flags = this->flags & 0x7f;
        this->spriteIndex = 0xd1;
        this->spritePriority.b1 = 3;
        temp = this->field_0x82.HALF.LO;
        this->palette.b.b0 = temp;
        this->damageType = 0x8d;
        this->boundingBox = &gUnk_080FD260;
        InitializeAnimation(this, 2);
        this->attachedEntity->spriteSettings.b.draw = TRUE;
        InitializeAnimation(this->attachedEntity, 6);
        CreateDust(this);
    }
}

void sub_080297F0(Entity* this) {
    u32 temp;
    this->action = 1;
    this->actionDelay = 0x78;
    this->flags = this->flags | 0x80;
    this->spriteSettings.b.draw = TRUE;
    this->damageType = 0x8e;
    sub_080AE068(this);
    this->spriteIndex = 0x143;
    temp = gUnk_080CCC47[this->entityType.form];
    this->palette.b.b0 = temp;
    this->spriteVramOffset = 9;
    InitializeAnimation(this, 0x54);
}

// clang-format off
void (*const gUnk_080CCC00[])(Entity*) = {
    sub_08029300,
    sub_08029318,
    sub_08001324,
    sub_080293B4,
    sub_08001242,
    nullsub_141,
};

void (*const gUnk_080CCC18[])(Entity*) = {
    sub_0802940C,
    sub_0802944C,
    sub_08029474,
    sub_080294D4,
    sub_0802953C,
    sub_08029610,
    sub_08029630,
};

const u8 gUnk_080CCC34[] = {
    0x54, 0x55,
    0x56, 0x55,
    0x56, 0x57,
};

void (*const gUnk_080CCC3C[])(Entity*) = {
    sub_08029660,
    sub_08029688,
};

const s8 gUnk_080CCC44[] = {
    -1, -5, -20,
};

const u8 gUnk_080CCC47[] = {
    2, 1, 0,
};
// clang-format on
