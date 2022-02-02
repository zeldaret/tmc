/**
 * @file pullableMushroom.c
 * @ingroup Objects
 *
 * @brief Pullable Mushroom object
 */

#define NENT_DEPRECATED
#include "global.h"
#include "object.h"
#include "functions.h"
#include "game.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unk_68[0x8];
    /*0x70*/ u32 unk_70;
    /*0x74*/ u32 unk_74;
    /*0x78*/ u32 unk_78;
    /*0x7c*/ u32 unk_7c;
} PullableMushroomEntity;

extern const Hitbox gUnk_080FD224;
extern const u8 gUnk_08126EE4[];

extern void (*const gUnk_081211A4[])(PullableMushroomEntity*);
extern void (*const gUnk_081211B4[])(PullableMushroomEntity*);
extern void (*const gUnk_081211C0[])(PullableMushroomEntity*);
extern const u16 gUnk_081211CC[];
extern void (*const gUnk_081211DC[])(PullableMushroomEntity*);
extern const u16 gUnk_081211E4[];
extern void (*const gUnk_081211EC[])(PullableMushroomEntity*);
extern const u8 gUnk_081211F4[];
extern const u8 gUnk_081211FC[];

void sub_0808AB68(PullableMushroomEntity*);
void sub_0808B168(PullableMushroomEntity*, u32);
u32 sub_0808B1F0(PullableMushroomEntity*, Entity*);
bool32 sub_0808B21C(PullableMushroomEntity*, u32);

void PullableMushroom(PullableMushroomEntity* this) {
    gUnk_081211A4[super->action](this);
    super->bitfield = 0;
}

void sub_0808AA1C(PullableMushroomEntity* this) {
    super->action = 1;
    if (AreaIsDungeon() == 0) {
        ChangeObjPalette(super, 0);
    }
    switch (super->type) {
        case 0:
            super->spritePriority.b0 = 4;
            super->hitbox = (Hitbox*)&gUnk_080FD224;
            super->field_0x16 = 1;
            SetTile(0x4022, COORD_TO_TILE(super), super->collisionLayer);
            super->health = 1;
            super->field_0x3c = 7;
            super->hitType = 0x6e;
            super->flags2 = 0x0e;
            super->field_0x1c = 1;
            super->flags |= 0x80;
            super->spriteOffsetY = 4;
            break;
        case 1:
            super->spritePriority.b0 = 4;
            if (super->type2 != 0) {
                super->hitbox = (Hitbox*)&gUnk_080FD224;
                super->flags |= 0x80;
                super->health = 1;
                super->field_0x3c = 7;
                super->hitType = 0x6e;
                super->flags2 = 4;
                super->field_0x1c = 1;
                super->action = 3;
            }
            InitializeAnimation(super, super->animationState + 9);
            break;
        case 2:
            super->spritePriority.b0 = 5;
            super->spriteRendering.b0 = 3;
            if ((super->animationState & 1)) {
                this->unk_74 = 0x200;
                this->unk_78 = 0x100;
            } else {
                this->unk_78 = 0x200;
                this->unk_74 = 0x100;
            }
            break;
    }
    sub_0808AB68(this);
}

void sub_0808AB68(PullableMushroomEntity* this) {
    gUnk_081211B4[super->type](this);
}

void sub_0808AB80(PullableMushroomEntity* this) {
    gUnk_081211C0[super->subAction](this);
}

void sub_0808AB98(PullableMushroomEntity* this) {
    if (*(u16*)&super->parent->action == 0x201) {
        super->parent->child = NULL;
        DeleteThisEntity();
    } else if (super->parent->action == 2) {
        sub_0808B168(this, 0);
    }
}

ASM_FUNC("asm/non_matching/pullableMushroom/sub_0808ABC4.inc", void sub_0808ABC4(PullableMushroomEntity* this))

ASM_FUNC("asm/non_matching/pullableMushroom/sub_0808ACEC.inc", void sub_0808ACEC(PullableMushroomEntity* this))

void sub_0808ADA0(PullableMushroomEntity* this) {
    if ((sub_0808B1F0(this, super->child) < 8) || (super->child == NULL)) {
        super->subAction += 1;
        super->actionDelay = 2;
        super->flags |= 0x80;
        super->animationState ^= 2;
        super->spritePriority.b0 = 4;
    } else {
        super->child->speed = 0x400;
        LinearMoveUpdate(super->child);
    }
}

void sub_0808ADF0(PullableMushroomEntity* this) {
    if (super->animationState + 0xd == super->animIndex) {
        if ((super->frame & 0x80) != 0) {
            super->subAction = 0;
            super->flags |= 0x80;
        } else {
            GetNextFrame(super);
        }
    } else {
        if (super->animationState + 1 != super->animIndex) {
            InitializeAnimation(super, super->animationState + 1);
            if (super->animationState == 3) {
                super->spriteSettings.flipX = 0;
            } else {
                super->spriteSettings.flipX = 1;
            }
            SoundReq(SFX_12E);
        } else {
            GetNextFrame(super);
            if (((super->frame & 0x80) != 0) && (--super->actionDelay == 0xff)) {
                InitializeAnimation(super, super->animationState + 0xd);
            }
        }
    }
}

void sub_0808AE84(PullableMushroomEntity* this) {
    if (gPlayerState.heldObject == 0) {
        super->subAction = 6;
    }
    gUnk_081211DC[super->subAction - 5](this);
}

void sub_0808AEB0(PullableMushroomEntity* this) {
    u32 uVar1;
    if (super->actionDelay != 0) {
        uVar1 = sub_0808B1F0(this, super->child);
        if ((gPlayerState.field_0x90 & gUnk_081211E4[super->animationState]) != 0) {
            GetNextFrame(super);
            if (uVar1 < 0x40) {
                sub_080044AE(&gPlayerEntity, 0x40, super->direction);
                if (--this->unk_7c == 0xffffffff) {
                    this->unk_7c = 4;
                    SoundReq(SFX_12F);
                }
            }
            super->field_0xf = 1;

        } else {
            if (((super->field_0xf != 0) && (gPlayerEntity.action == 1)) && (gPlayerState.swim_state == 0)) {
                gPlayerState.queued_action = 0x1b;
                gPlayerState.field_0x38 = uVar1;
                gPlayerState.field_0x39 = super->direction ^ 0x10;
                gPlayerState.field_0x3a = sub_0808B1F0(this, &gPlayerEntity);
                super->subAction++;
            }
        }
    } else {
        super->actionDelay = 1;
        this->unk_7c = 1;
        super->animationState = gPlayerEntity.animationState >> 1 ^ 2;
        super->direction = (super->animationState << 3);
        super->flags &= 0x7f;
        super->spriteSettings.flipX = gPlayerEntity.spriteSettings.flipX;
        InitializeAnimation(super, super->animationState + 5);
        if (sub_0808B21C(this, 0)) {
            sub_0808B168((PullableMushroomEntity*)super->child, 0);
        }
        if ((super->animationState & 1) != 0) {
            gPlayerEntity.y.HALF.HI = super->y.HALF.HI;
        } else {
            gPlayerEntity.x.HALF.HI = super->x.HALF.HI;
        }
    }
}

void sub_0808AFD4(PullableMushroomEntity* this) {
    super->action = 1;
    super->subAction = 1;
    (super->child)->direction = super->direction ^ 0x10;
    SoundReq(SFX_130);
}

void sub_0808AFF0(PullableMushroomEntity* this) {
    gUnk_081211EC[super->subAction](this);
    if ((((gPlayerState.field_0x1c & 0xf) != 1) || ((super->bitfield & 0x7f) != 0x13)) && (super->type == 1)) {
        (super->parent)->action = 1;
        (super->parent)->subAction = 1;
        super->direction = super->parent->direction ^ 0x10;
        super->parent->flags &= 0x7f;
        super->flags &= 0x7f;
        super->action = 1;
        SoundReq(SFX_130);
    }
}

void sub_0808B05C(PullableMushroomEntity* this) {
    if (super->type == 0) {
        super->animationState = gPlayerEntity.animationState >> 1 ^ 2;
        super->direction = super->animationState << 3;
        super->spriteSettings.flipX = gPlayerEntity.spriteSettings.flipX;
        super->flags &= 0x7f;
        InitializeAnimation(super, super->animationState + 5);
        if (sub_0808B21C(this, 1)) {
            sub_0808B168((PullableMushroomEntity*)super->child, 1);
        }
    }
    super->subAction++;
}

ASM_FUNC("asm/non_matching/pullableMushroom/sub_0808B0BC.inc", void sub_0808B0BC(PullableMushroomEntity* this))

ASM_FUNC("asm/non_matching/pullableMushroom/sub_0808B168.inc",
         void sub_0808B168(PullableMushroomEntity* this, u32 param_2))

u32 sub_0808B1F0(PullableMushroomEntity* this, Entity* other) {
    s32 sVar1;
    s32 sVar2;
    u32 uVar3;

    if ((super->animationState & 1) != 0) {
        sVar1 = super->x.HALF.HI;
        sVar2 = other->x.HALF.HI;
    } else {
        sVar1 = super->y.HALF.HI;
        sVar2 = other->y.HALF.HI;
    }
    uVar3 = (s32)sVar1 - (s32)sVar2;
    if ((s32)uVar3 < 0) {
        uVar3 = -uVar3;
    }
    return uVar3;
}

bool32 sub_0808B21C(PullableMushroomEntity* this, u32 param_2) {
    Entity* obj;

    super->spritePriority.b0 = 6;
    obj = CreateObjectWithParent(super, PULLABLE_MUSHROOM, 1, 0);
    super->child = obj;
    if (obj != NULL) {
        obj->animationState = super->animationState;
        (super->child)->direction = super->direction;
        super->child->spriteSettings.flipX = super->spriteSettings.flipX;
        (super->child)->parent = super;
        (super->child)->type2 = (u8)param_2;
    }
    obj = CreateObjectWithParent(super, PULLABLE_MUSHROOM, 2, 0);
    super->parent = obj;
    if (obj != NULL) {
        obj->animationState = super->animationState;
        (super->parent)->child = super->child;
        return TRUE;
    }
    return FALSE;
}

void (*const gUnk_081211A4[])(PullableMushroomEntity*) = {
    sub_0808AA1C,
    sub_0808AB68,
    sub_0808AE84,
    sub_0808AFF0,
};
void (*const gUnk_081211B4[])(PullableMushroomEntity*) = {
    sub_0808AB80,
    sub_0808AB98,
    sub_0808ABC4,
};
void (*const gUnk_081211C0[])(PullableMushroomEntity*) = {
    sub_0808ACEC,
    sub_0808ADA0,
    sub_0808ADF0,
};
const u16 gUnk_081211CC[] = { 32768, 64000, 0, 64517, 0, 0, 32768, 64763 };
void (*const gUnk_081211DC[])(PullableMushroomEntity*) = {
    sub_0808AEB0,
    sub_0808AFD4,
};
const u16 gUnk_081211E4[] = { 1024, 256, 2048, 512 };
void (*const gUnk_081211EC[])(PullableMushroomEntity*) = {
    sub_0808B05C,
    sub_0808B0BC,
};
const u8 gUnk_081211F4[] = {
    0, 8, 248, 252, 0, 248, 8, 252,
};
const u8 gUnk_081211FC[] = {
    0, 3, 248, 252, 0, 244, 8, 252,
};
