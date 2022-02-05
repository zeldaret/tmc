/**
 * @file armos.c
 * @ingroup Enemies
 *
 * @brief Armos enemy
 */

#define NENT_DEPRECATED
#include "global.h"
#include "enemy.h"
#include "functions.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unk_68[0x10];
    /*0x78*/ u16 unk_78;
    /*0x7a*/ u16 unk_7a;
    /*0x7c*/ ScreenTransitionData* unk_7c;
    /*0x80*/ u8 unk_80;
    /*0x81*/ u8 unk_81;
    /*0x82*/ u8 unk_82;
    /*0x83*/ u8 unk_83;
    /*0x84*/ u32 unk_84;
} ArmosEntity;

extern Hitbox gUnk_080FD2F0;
extern Hitbox gHitbox_15;
extern Entity* gUnk_020000B0;
extern Entity gUnk_02027EB4;
extern Entity gUnk_0200D654;

extern void (*const gUnk_080CE124[])(ArmosEntity*);
extern void (*const gUnk_080CE13C[])(ArmosEntity*);
extern const u8 gUnk_080CE160[];
extern const s8 gUnk_080CE164[];

void sub_08030150(ArmosEntity*);
void sub_080309C8(ArmosEntity*, u32);
void sub_080309E8(ArmosEntity*);
void sub_08030580(ArmosEntity*);
void sub_080307EC(ArmosEntity*);
bool32 sub_0803086C(ArmosEntity*);
bool32 sub_08030650(ArmosEntity*);
void sub_080309A8(ArmosEntity*);
void sub_08030834(ArmosEntity*);
void sub_080306C4(ArmosEntity*);
void sub_08030A04(ArmosEntity*);
bool32 sub_080305BC(ArmosEntity*);
void sub_080307D4(ArmosEntity*);
void sub_08030590(ArmosEntity*);

void Armos(ArmosEntity* this) {
    EnemyFunctionHandler(super, (EntityActionArray)&gUnk_080CE124);
    SetChildOffset(super, 0, 1, -0x10);
    sub_08030150(this);
}

void sub_080301BC(ArmosEntity* this) {
    gUnk_080CE13C[super->action](this);
}

void sub_080301D4(ArmosEntity* this) {
    if ((super->action == 1) && (super->field_0x4c == &gPlayerEntity)) {
        super->iframes = -0x1e;
    }
    if ((super->health != 0) && (super->health != this->unk_81)) {
        super->action = 8;
        sub_080309C8(this, 6);
        sub_080309E8(this);
    }
    if (super->field_0x43 != 0) {
        sub_0804A9FC(super, 0x1c);
    }
    this->unk_81 = super->health;
    sub_0804AA30(super, gUnk_080CE124);
}

void sub_08030240(ArmosEntity* this) {
    if (super->animIndex == 6) {
        if ((super->frame & 0x80) == 0) {
            GetNextFrame(super);
        }
    }
    sub_08001242(super);
}

void nullsub_17(ArmosEntity* this) {
}

void sub_0803026C(ArmosEntity* this) {
    u16* ptr;
    sub_0804A720(super);
    this->unk_80 = super->actionDelay;
    ptr = &gRoomTransition.armos_data.data[this->unk_80 * 2];
    if (ptr[0] != 0) {
        super->x.HALF.HI = ptr[0];
        super->y.HALF.HI = ptr[1];
        this->unk_84 = (gRoomTransition.armos_data.field_0xac >> this->unk_80) & 1;
    } else {
        this->unk_84 = (0x47d >> this->unk_80) & 1;
    }
    if (super->type2 != 0) {
        this->unk_7c = (ScreenTransitionData*)GetCurrentRoomProperty(super->type2);
    }
    this->unk_81 = super->health;
    sub_08030580(this);
    sub_080307EC(this);
    if (this->unk_80 == 2 && gRoomControls.origin_y + 0x80 < super->y.HALF.HI) {
        super->action = 7;
        sub_080309C8(this, 7);
    }
}

void sub_0803030C(ArmosEntity* this) {
    if (sub_0803086C(this) == 0 && this->unk_84 != 0 && sub_08030650(this)) {
        super->action = 2;
        super->subAction = 0;
    }
}

void sub_08030338(ArmosEntity* this) {
    u8 bVar2;
    u32 uVar3;

    if (this->unk_80 != 2) {
        sub_080309A8(this);
    } else {
        UpdateAnimationVariableFrames(super, 3);
        if ((this->unk_84 != 0) && (super->frameIndex == 0x25)) {
            super->frameIndex = 0x19;
        }
    }
    if (super->frame == 1) {
        if (super->subAction == 0) {
            super->subAction = 1;
        }
        uVar3 = super->actionDelay + 1;
        super->actionDelay = (u8)uVar3;
        if ((uVar3 & 1) == 0) {
            return;
        }
        super->spriteOffsetX = gUnk_080CE160[(uVar3 & 6) >> 1];
    } else {
        if (super->frame == 2) {
            super->frame = 0;
            if (this->unk_80 != 2) {
                super->flags2 = 0xb;
                super->hitType = 8;
                super->hitbox = (Hitbox*)&gUnk_080FD2F0;
            }
            sub_08030834(this);
            EnqueueSFX(SFX_12A);
            return;
        }
        bVar2 = super->frame & 0x80;
        if ((super->frame & 0x80) != 0) {
            if (this->unk_80 != 2) {
                super->action = 3;
                super->animationState = 0xff;
                this->unk_7a = 600;
                this->unk_82 = 0;
                sub_080306C4(this);
                sub_080309E8(this);
                return;
            }
            super->action = 6;
            super->actionDelay = 0x1a;
            super->speed = 0x300;
            super->direction = 0x10;
            return;
        } else {
            super->spriteOffsetX = bVar2;
        }
    }
}

void sub_08030430(ArmosEntity* this) {
    sub_08030A04(this);
    if (0x100 < super->speed) {
        GetNextFrame(super);
    }
    sub_080309A8(this);
    if (this->unk_7a != 0) {
        this->unk_7a--;
    }
    if (--super->actionDelay == 0) {
        sub_080306C4(this);
    }
}

void sub_08030474(ArmosEntity* this) {
    if (--super->actionDelay == 0) {
        super->action = 3;
        super->actionDelay = 1;
        this->unk_7a = 0x3c;
        sub_080309E8(this);
    } else {
        if (sub_080305BC(this)) {
            sub_08030590(this);
        } else {
            sub_080307D4(this);
            sub_080309A8(this);
        }
    }
}

NONMATCH("asm/non_matching/armos/sub_080304BC.inc", void sub_080304BC(ArmosEntity* this)) {
    u32 tmp;

    sub_080309A8(this);
    tmp = super->frame & 0x80;
    if (tmp != 0) {
        sub_08030580(this);
    } else {
        if (super->frame == 1) {
            super->frame = tmp;
            EnqueueSFX(SFX_12A);
        }
    }
}
END_NONMATCH

void sub_080304F4(ArmosEntity* this) {
    LinearMoveUpdate(super);
    sub_080309A8(this);
    if (--super->actionDelay == 0) {
        super->action = 7;
        sub_080309C8(this, 5);
        sub_080307EC(this);
    }
}

void sub_08030524(ArmosEntity* this) {
    if ((super->frame & 0x80) == 0) {
        sub_080309A8(this);
    } else if (super->frame == 1) {
        super->frame = 0;
        EnqueueSFX(SFX_12A);
    }
}

void sub_08030554(ArmosEntity* this) {
    sub_080309A8(this);
    if ((super->frame & 0x80) != 0) {
        super->action = 3;
        sub_080309C8(this, (u32)super->animationState);
        sub_080306C4(this);
    }
}

void sub_08030580(ArmosEntity* this) {
    super->action = 1;
    sub_080309C8(this, 4);
}

void sub_08030590(ArmosEntity* this) {
    super->action = 5;
    super->flags2 = 1;
    super->hitType = 1;
    super->hitbox = (Hitbox*)&gHitbox_15;
    sub_080309C8(this, 5);
    sub_080307EC(this);
}

ASM_FUNC("asm/non_matching/armos/sub_080305BC.inc", bool32 sub_080305BC(ArmosEntity* this))

bool32 sub_08030650(ArmosEntity* this) {
    if (super->type == 0) {
        if (super->bitfield == 0x80) {
            return 1;
        }
    } else if (this->unk_80 != 2) {
        if ((sub_08049FDC(super, 1) == 0) || (0x20 < (gUnk_020000B0->x.HALF.HI - super->x.HALF.HI) + 0x10U)) {
            return FALSE;
        }
        return TRUE;
    } else {
        if (sub_08049FDC(super, 1) == 0) {
            return FALSE;
        }
        if (gUnk_020000B0->x.HALF.HI >= (s32)(gRoomControls.origin_x + 0xa8)) {
            return FALSE;
        }
        return TRUE;
    }
    return FALSE;
}

ASM_FUNC("asm/non_matching/armos/sub_080306C4.inc", void sub_080306C4(ArmosEntity* this))

void sub_080307D4(ArmosEntity* this) {
    u8 tmp = super->direction >> 3;
    if (tmp != super->animationState) {
        super->animationState = tmp;
        sub_080309C8(this, tmp);
    }
}

void sub_080307EC(ArmosEntity* this) {
    u32 position = COORD_TO_TILE(super);
    this->unk_78 = GetTileIndex(position, super->collisionLayer);
    SetTile(0x4022, position, (u32)super->collisionLayer);
}

void sub_08030834(ArmosEntity* this) {
    SetTile(this->unk_78, COORD_TO_TILE(super), super->collisionLayer);
}

ASM_FUNC("asm/non_matching/armos/sub_0803086C.inc", bool32 sub_0803086C(ArmosEntity* this))

void sub_080309A8(ArmosEntity* this) {
    GetNextFrame(super);
    if ((this->unk_84 != 0) && (super->frameIndex == 0x25)) {
        super->frameIndex = 0x19;
    }
}

void sub_080309C8(ArmosEntity* this, u32 param_2) {
    InitializeAnimation(super, param_2);
    if ((this->unk_84 != 0) && (super->frameIndex == 0x25)) {
        super->frameIndex = 0x19;
    }
}

void sub_080309E8(ArmosEntity* this) {
    if (super->health < 5) {
        super->speed = 0x120;
    } else if (super->health <= 8) {
        super->speed = 0xe0;
    }
}

void sub_08030A04(ArmosEntity* this) {
    ProcessMovement(super);
    if ((super->frame & 1) != 0) {
        super->frame = super->frame & 0xfe;
        EnqueueSFX(SFX_101);
    }
}

void (*const gUnk_080CE124[])(ArmosEntity*) = {
    sub_080301BC, sub_080301D4, (void (*)(ArmosEntity*))sub_08001324, (void (*)(ArmosEntity*))sub_0804A7D4,
    sub_08030240, nullsub_17,
};
void (*const gUnk_080CE13C[])(ArmosEntity*) = {
    sub_0803026C, sub_0803030C, sub_08030338, sub_08030430, sub_08030474,
    sub_080304BC, sub_080304F4, sub_08030524, sub_08030554,
};
const u8 gUnk_080CE160[] = {
    255,
    0,
    1,
    0,
};
const s8 gUnk_080CE164[] = { 0, -7, 7, 0, 0, 7, -7, 0 };
