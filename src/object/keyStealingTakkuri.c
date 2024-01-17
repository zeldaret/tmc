/**
 * @file keyStealingTakkuri.c
 * @ingroup Objects
 *
 * @brief Key Stealing Takkuri object
 */
#include "functions.h"
#include "object.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u16 unk_68;
    /*0x6a*/ u16 unk_6a;
    /*0x6c*/ u16 unk_6c;
    /*0x6e*/ u8 unk_6e;
} KeyStealingTakkuriEntity;

extern void (*const KeyStealingTakkuri_Types[])(KeyStealingTakkuriEntity*);
extern void (*const KeyStealingTakkuri_Type0_Actions[])(KeyStealingTakkuriEntity*);
extern void (*const KeyStealingTakkuri_Type1_Actions[])(KeyStealingTakkuriEntity*);
extern void (*const KeyStealingTakkuri_Type5_Actions[])(KeyStealingTakkuriEntity*);
extern void (*const KeyStealingTakkuri_Type2_Actions[])(KeyStealingTakkuriEntity*);
extern void (*const KeyStealingTakkuri_Type3_Actions[])(KeyStealingTakkuriEntity*);
extern const u8 gUnk_08124128[];
extern const u8 gUnk_0812412D[];
extern const u16 gUnk_08124132[];
extern const u8 gUnk_08124146[];
extern void (*const KeyStealingTakkuri_Type4_Actions[])(KeyStealingTakkuriEntity*);
typedef struct {
    s16 unk_0;
    s16 unk_2;
    u8 unk_4;
    u8 unk_5;
    u8 unk_6;
} TmpStruct;
extern const TmpStruct gUnk_08124158[];
extern const u16 gUnk_08124178[];

void sub_0809E1C8(KeyStealingTakkuriEntity*, u32);
void sub_0809E1F0(KeyStealingTakkuriEntity*);
void sub_0809E210(KeyStealingTakkuriEntity*);
void KeyStealingTakkuri_Type1_Init(KeyStealingTakkuriEntity*);
void KeyStealingTakkuri_Type1_Action1(KeyStealingTakkuriEntity*);
void sub_0809E238(KeyStealingTakkuriEntity*);
void sub_0809E29C(KeyStealingTakkuriEntity*);
u32 sub_0809E2C4(KeyStealingTakkuriEntity*, u32);
void KeyStealingTakkuri_Type3_Action3(KeyStealingTakkuriEntity*);

void KeyStealingTakkuri(KeyStealingTakkuriEntity* this) {
    KeyStealingTakkuri_Types[super->type](this);
}

void KeyStealingTakkuri_Type0(KeyStealingTakkuriEntity* this) {
    KeyStealingTakkuri_Type0_Actions[super->action](this);
}

void KeyStealingTakkuri_Type0_Init(KeyStealingTakkuriEntity* this) {
    Entity* entity;
    super->action++;
    super->collisionLayer = 1;
    super->timer = 30;
    super->subtimer = 0;
    super->spriteRendering.b3 = 1;
    super->speed = 0;
    super->direction = 0x18;
    InitAnimationForceUpdate(super, 1);
    entity = FindNextDuplicateID(super, 6);
    if (entity != NULL) {
        entity->parent = super;
        super->child = entity;
    } else {
        SetGlobalFlag(HAKA_KEY_LOST);
        DeleteThisEntity();
    }
}

void KeyStealingTakkuri_Type0_Action1(KeyStealingTakkuriEntity* this) {
    if (--super->timer == 0) {
        super->action++;
        super->y.WORD += Q_16_16(16.0);
        super->z.WORD -= Q_16_16(16.0);
        InitAnimationForceUpdate(super, 3);
    }
}

void KeyStealingTakkuri_Type0_Action2(KeyStealingTakkuriEntity* this) {
    Entity* child = super->child;
    sub_0809E1C8(this, GetFacingDirection(super, child));
    sub_0809E1F0(this);
    if ((s32)sub_080041DC(super, child->x.HALF.HI, child->y.HALF.HI) * 0x10 < super->speed) {
        super->action++;
        super->timer = 16;
        super->subtimer = 1;
        InitAnimationForceUpdate(super, 2);
    }
    UpdateAnimationSingleFrame(super);
}

void KeyStealingTakkuri_Type0_Action3(KeyStealingTakkuriEntity* this) {
    sub_0809E1C8(this, sub_080045B4(super, gRoomControls.origin_x + 0x78, gRoomControls.origin_y + 0xa8));
    if (super->timer != 0) {
        super->timer--;
        super->speed -= 0x80;
    }
    sub_0809E1F0(this);
    if ((s32)sub_080041DC(super, gRoomControls.origin_x + 0x78, gRoomControls.origin_y + 0xa8) * 0x10 < super->speed) {
        super->action++;
    }
    sub_0809E210(this);
    UpdateAnimationSingleFrame(super);
}

void KeyStealingTakkuri_Type0_Action4(KeyStealingTakkuriEntity* this) {
    sub_0809E1F0(this);
    if (!CheckOnScreen(super)) {
        SetGlobalFlag(HAKA_KEY_LOST);
        (super->child)->parent = NULL;
        DeleteThisEntity();
    }
    UpdateAnimationSingleFrame(super);
}

void KeyStealingTakkuri_Type1(KeyStealingTakkuriEntity* this) {
    KeyStealingTakkuri_Type1_Actions[super->action](this);
}

void KeyStealingTakkuri_Type1_Init(KeyStealingTakkuriEntity* this) {
    super->action++;
    super->collisionLayer = 2;
    super->spriteRendering.b3 = 2;
    UpdateSpriteForCollisionLayer(super);
    InitAnimationForceUpdate(super, 0x3c);
}

void KeyStealingTakkuri_Type1_Action1(KeyStealingTakkuriEntity* this) {
    Entity* parent = super->parent;
    if (parent != NULL) {
        if (parent->next == NULL) {
            DeleteThisEntity();
        }
        if (parent->subtimer != 0) {
            PositionRelative(parent, super, 0, 0x80000);
        }
        super->spriteSettings.draw = parent->spriteSettings.draw;
    } else {
        DeleteThisEntity();
    }
}

void KeyStealingTakkuri_Type5(KeyStealingTakkuriEntity* this) {
    KeyStealingTakkuri_Type5_Actions[super->action](this);
}

void KeyStealingTakkuri_Type5_Init(KeyStealingTakkuriEntity* this) {
    KeyStealingTakkuri_Type1_Init(this);
    super->spriteSettings.draw = 1;
    super->direction = 0x18;
    super->speed = 0x100;
    super->zVelocity = Q_16_16(2.0);
    super->timer = 1;
    SoundReq(SFX_RUPEE_BOUNCE);
}

void KeyStealingTakkuri_Type5_Action1(KeyStealingTakkuriEntity* this) {
    LinearMoveUpdate(super);
    if (BounceUpdate(super, Q_8_8(32.0)) < BOUNCE_AIRBORNE) {
        if (super->timer != 0) {
            super->timer--;
            super->zVelocity = Q_16_16(1.0);
        } else {
            super->action++;
            super->collisionLayer = gPlayerEntity.base.collisionLayer;
            UpdateSpriteForCollisionLayer(super);
        }
        SoundReq(SFX_RUPEE_BOUNCE);
    }
    KeyStealingTakkuri_Type1_Action1(this);
}

void KeyStealingTakkuri_Type2(KeyStealingTakkuriEntity* this) {
    KeyStealingTakkuri_Type2_Actions[super->action](this);
}

void KeyStealingTakkuri_Type2_Init(KeyStealingTakkuriEntity* this) {
    Entity* entity;

    super->action++;
    super->collisionLayer = 2;
    super->timer = 30;
    super->subtimer = 1;
    super->spriteRendering.b3 = 1;
    super->speed = 0;
    super->direction = 0x18;
    super->y.WORD += Q_16_16(16.0);
    super->z.WORD -= Q_16_16(16.0);
    this->unk_68 = super->x.HALF.HI;
    this->unk_6a = super->y.HALF.HI;
    this->unk_6c = 0;
    this->unk_6e = 0;
    UpdateSpriteForCollisionLayer(super);
    InitAnimationForceUpdate(super, 3);
    entity = FindNextDuplicateID(super, 6);
    if (entity != NULL) {
        entity->parent = super;
        super->child = entity;
    } else {
        SetGlobalFlag(HAKA_KEY_LOST);
        DeleteThisEntity();
    }
}

void KeyStealingTakkuri_Type2_Action1(KeyStealingTakkuriEntity* this) {
    if (--super->timer == 0) {
        super->action++;
        SoundReq(SFX_146);
    }
    UpdateAnimationSingleFrame(super);
}

void KeyStealingTakkuri_Type2_Action2(KeyStealingTakkuriEntity* this) {
    this->unk_6e += 8;
    if (0x20 < ++this->unk_6c) {
        super->action++;
        this->unk_6c = 0x20;
        SoundReq(SFX_146);
    }
    sub_0809E238(this);
    sub_0809E29C(this);
    UpdateAnimationSingleFrame(super);
}

void KeyStealingTakkuri_Type2_Action3(KeyStealingTakkuriEntity* this) {
    this->unk_6e += 8;
    if (--this->unk_6c == 0) {
        super->action++;
        super->timer = 30;
        super->spriteSettings.flipX = 0;
    } else {
        sub_0809E238(this);
        sub_0809E29C(this);
    }
    UpdateAnimationSingleFrame(super);
}

void KeyStealingTakkuri_Type2_Action4(KeyStealingTakkuriEntity* this) {
    if (--super->timer == 0) {
        super->action++;
        SoundReq(SFX_15B);
    }
    UpdateAnimationSingleFrame(super);
}

void KeyStealingTakkuri_Type2_Action5(KeyStealingTakkuriEntity* this) {
    sub_0809E1C8(this, sub_080045B4(super, gRoomControls.origin_x + 0x40, gRoomControls.origin_y + 0x178));
    sub_0809E1F0(this);
    sub_0809E210(this);
    if (!CheckOnScreen(super)) {
        SetGlobalFlag(HAKA_KEY_LOST);
        (super->child)->parent = NULL;
        DeleteThisEntity();
    }
    UpdateAnimationSingleFrame(super);
}

void KeyStealingTakkuri_Type3(KeyStealingTakkuriEntity* this) {
    KeyStealingTakkuri_Type3_Actions[super->action](this);
}

void KeyStealingTakkuri_Type3_Init(KeyStealingTakkuriEntity* this) {
    Entity* obj;
    s32 tmp;
    const u16* ptr;

    super->action++;
    super->collisionLayer = 2;
    super->timer = 10;
    super->subtimer = 0;
    super->spriteRendering.b3 = 1;
    super->speed = 0;
    super->direction = gUnk_0812412D[super->type2];
    ptr = &gUnk_08124132[super->type2 * 2];
    super->x.HALF.HI = gRoomControls.origin_x + ptr[0];
    super->y.HALF.HI = gRoomControls.origin_y + ptr[1] + 0x40;
    super->z.HALF.HI = -64;
    UpdateSpriteForCollisionLayer(super);
    InitAnimationForceUpdate(super, gUnk_08124128[super->type2]);
    obj = CreateObject(KEY_STEALING_TAKKURI, 1, 0);
    if (obj != NULL) {
        obj->parent = super;
        super->child = obj;
        PositionRelative(super, obj, 0, 0x80000);
        tmp = 0x10;
        if (super->direction == 0x18) {
            tmp = -tmp;
        }
        obj->x.HALF.HI += tmp;
    }
}

void KeyStealingTakkuri_Type3_Action1(KeyStealingTakkuriEntity* this) {
    Entity* child;

    switch (sub_0809E2C4(this, super->type2)) {
        case 1:
            super->action += 2;
            super->timer = 255;
            InitAnimationForceUpdate(super, super->animIndex + 2);
            SoundReq(SFX_123);
            child = super->child;
            if (child != NULL) {
                Entity* obj = CreateObject(GRAVEYARD_KEY, super->type2 + 2, 0);
                if (obj != NULL) {
                    CopyPosition(child, obj);
                }
                DeleteEntityAny(child);
                super->child = NULL;
            }
            break;
        case 2:
            if (super->timer == 0) {
                super->action++;
                InitAnimationForceUpdate(super, super->animIndex + 2);
                SoundReq(SFX_123);
                SoundReq(SFX_1F3);
            } else {
                super->timer--;
            }
            break;
        default:
            super->timer = 10;
            break;
    }
    UpdateAnimationSingleFrame(super);
}

void KeyStealingTakkuri_Type3_Action2(KeyStealingTakkuriEntity* this) {
    Entity* child;

    child = super->child;
    if ((child != NULL) && ((((child->x.HALF.HI - super->x.HALF.HI) ^ super->direction << 0xb) & 0x8000) != 0)) {
        super->action++;
        super->subtimer = 1;
        SoundReq(SFX_102);
    }
    KeyStealingTakkuri_Type3_Action3(this);
}

void KeyStealingTakkuri_Type3_Action3(KeyStealingTakkuriEntity* this) {
    u32 tmp;
    Entity* child;

    if (CheckOnScreen(super) == 0) {
        child = super->child;
        if (child != NULL) {
            child->parent = NULL;
        }
        tmp = super->timer & 0x80;
        if (tmp != 0) {
            DeleteThisEntity();
        } else {
            super->action = tmp;
            super->type2 = gUnk_08124146[(Random() & 1) + (u32)super->type2 * 2];
        }
    } else {
        sub_0809E1F0(this);
        UpdateAnimationSingleFrame(super);
    }
}

void KeyStealingTakkuri_Type4(KeyStealingTakkuriEntity* this) {
    KeyStealingTakkuri_Type4_Actions[super->action](this);
}

void KeyStealingTakkuri_Type4_Init(KeyStealingTakkuriEntity* this) {
    super->action++;
    super->collisionLayer = 1;
    super->spriteRendering.b3 = 1;
    super->z.HALF.HI = -16;
    sub_0807DD64(super);
    InitAnimationForceUpdate(super, 1);
}

void KeyStealingTakkuri_Type4_Action1(KeyStealingTakkuriEntity* this) {
    ExecuteScriptForEntity(super, NULL);
    HandleEntity0x82Actions(super);
    UpdateAnimationSingleFrame(super);
}

void sub_0809E0A0(KeyStealingTakkuriEntity* this) {
    Entity* obj = CreateObject(KEY_STEALING_TAKKURI, 5, 0);
    if (obj != NULL) {
        obj->parent = super;
        super->child = obj;
        super->subtimer = 0;
        CopyPosition(&gPlayerEntity.base, obj);
        obj->z.HALF.HI = -8;
    }
}

void sub_0809E0D4(KeyStealingTakkuriEntity* this, ScriptExecutionContext* context) {
    Entity* entity;
    s32 varX;
    s32 varY;
    s32 varX2;
    s32 varY2;
    s32 varX3;
    s32 varY3;

    if (context->unk_18 == 0) {
        entity = super->child;
        if (entity != NULL) {
            if (entity->action < 2) {
                gActiveScriptInfo.commandSize = context->unk_18;
                return;
            }
        } else {
            entity = &gPlayerEntity.base;
        }
        context->unk_18++;
        LookAt(super, context, entity->x.HALF.HI, entity->y.HALF.HI);
        SoundReq(SFX_123);
        gActiveScriptInfo.commandSize = 0;
    } else {
        entity = super->child;
        if (entity != NULL) {
            varX = entity->x.HALF.HI;
            varY = entity->y.HALF.HI;
        } else {
            varX = context->x.HALF.HI;
            varY = context->y.HALF.HI;
        }
        varX2 = varX;
        varY2 = varY;
        if (--context->unk_19 == 0) {
            context->unk_19 = 8;
            super->direction = CalculateDirectionFromOffsets(varX2 - super->x.HALF.HI, varY2 - super->y.HALF.HI);
        }
        varX3 = super->x.HALF.HI - varX2;
        varY3 = super->y.HALF.HI - varY2;
        LinearMoveAngle(super, (s32)super->speed, (u32)super->direction);
        varX3 = (super->x.HALF.HI - varX2) * (varX3);
        varY3 = (super->y.HALF.HI - varY2) * (varY3);
        if ((varX3 < 1) && (varY3 < 1)) {
            super->x.HALF.HI = varX;
            super->y.HALF.HI = varY;
            super->subtimer = 1;
            SoundReq(SFX_102);
        } else {
            gActiveScriptInfo.commandSize = 0;
        }
    }
}

void sub_0809E1C8(KeyStealingTakkuriEntity* this, u32 param_2) {
    u32 tmp;
    tmp = (param_2 + 0x20);
    tmp -= super->direction;
    tmp &= 0x1f;
    if (tmp != 0) {
        if (tmp < 0x10) {
            super->direction++;
        } else {
            super->direction--;
        }
    }
    super->direction &= 0x1f;
}

void sub_0809E1F0(KeyStealingTakkuriEntity* this) {
    super->speed += 0x40;
    if (super->speed > 0x400) {
        super->speed = 0x400;
    }
    LinearMoveUpdate(super);
}

void sub_0809E210(KeyStealingTakkuriEntity* this) {
    gPlayerEntity.base.animationState =
        GetAnimationStateForDirection8(GetFacingDirection(&gPlayerEntity.base, super)) & 0xfe;
    gPlayerState.animation = ANIM_DEFAULT;
}

void sub_0809E238(KeyStealingTakkuriEntity* this) {
    s32 x = FixedMul(gSineTable[this->unk_6e], this->unk_6c);
    s32 y = FixedMul(gSineTable[this->unk_6e + 0x40], this->unk_6c);
    super->x.HALF.HI = this->unk_68 + x;
    super->y.HALF.HI = this->unk_6a - y;
}

void sub_0809E29C(KeyStealingTakkuriEntity* this) {
    if ((this->unk_6e + 0x40) & 0x80) {
        super->spriteSettings.flipX = 0;
    } else {
        super->spriteSettings.flipX = 1;
    }
}

u32 sub_0809E2C4(KeyStealingTakkuriEntity* this, u32 param_2) {
    s32 uVar1;
    s32 uVar2;
    const TmpStruct* tmp;
    s32 counter;
    const u16* ptr;
    s32 roomX;
    s32 roomY;

    ptr = &gUnk_08124178[param_2 * 2];
    roomX = gPlayerEntity.base.x.HALF.HI - (gRoomControls.origin_x + ptr[0]);
    roomY = gPlayerEntity.base.y.HALF.HI - (gRoomControls.origin_y + ptr[1]);
    tmp = gUnk_08124158;
    counter = 0;
    while (counter < 4) {
        uVar1 = roomX - tmp->unk_0 + tmp->unk_4;
        uVar2 = tmp->unk_4 * 2;
        if (uVar2 > (u16)uVar1) {
            uVar1 = roomY - tmp->unk_2 + tmp->unk_5;
            uVar2 = tmp->unk_5 * 2;
            if (uVar2 > (u16)uVar1) {
                if (tmp->unk_6 == gPlayerEntity.base.animationState && gPlayerEntity.base.action == PLAYER_BOUNCE) {
                    return 1;
                }
                return 2;
            }
        }
        counter++;
        tmp++;
    }
    return 0;
}

void (*const KeyStealingTakkuri_Types[])(KeyStealingTakkuriEntity*) = {
    KeyStealingTakkuri_Type0, KeyStealingTakkuri_Type1, KeyStealingTakkuri_Type2,
    KeyStealingTakkuri_Type3, KeyStealingTakkuri_Type4, KeyStealingTakkuri_Type5,
};
void (*const KeyStealingTakkuri_Type0_Actions[])(KeyStealingTakkuriEntity*) = {
    KeyStealingTakkuri_Type0_Init,    KeyStealingTakkuri_Type0_Action1, KeyStealingTakkuri_Type0_Action2,
    KeyStealingTakkuri_Type0_Action3, KeyStealingTakkuri_Type0_Action4,
};
void (*const KeyStealingTakkuri_Type1_Actions[])(KeyStealingTakkuriEntity*) = {
    KeyStealingTakkuri_Type1_Init,
    KeyStealingTakkuri_Type1_Action1,
};
void (*const KeyStealingTakkuri_Type5_Actions[])(KeyStealingTakkuriEntity*) = {
    KeyStealingTakkuri_Type5_Init,
    KeyStealingTakkuri_Type5_Action1,
    KeyStealingTakkuri_Type1_Action1,
};
void (*const KeyStealingTakkuri_Type2_Actions[])(KeyStealingTakkuriEntity*) = {
    KeyStealingTakkuri_Type2_Init,    KeyStealingTakkuri_Type2_Action1, KeyStealingTakkuri_Type2_Action2,
    KeyStealingTakkuri_Type2_Action3, KeyStealingTakkuri_Type2_Action4, KeyStealingTakkuri_Type2_Action5,
};
void (*const KeyStealingTakkuri_Type3_Actions[])(KeyStealingTakkuriEntity*) = {
    KeyStealingTakkuri_Type3_Init,
    KeyStealingTakkuri_Type3_Action1,
    KeyStealingTakkuri_Type3_Action2,
    KeyStealingTakkuri_Type3_Action3,
};
const u8 gUnk_08124128[] = {
    0, 0, 1, 1, 1,
};
const u8 gUnk_0812412D[] = {
    8, 8, 24, 24, 24,
};
const u16 gUnk_08124132[] = {
    56, 312, 56, 584, 216, 488, 424, 472, 392, 328,
};
const u8 gUnk_08124146[] = {
    3, 4, 3, 4, 0, 4, 0, 1, 1, 2,
};
void (*const KeyStealingTakkuri_Type4_Actions[])(KeyStealingTakkuriEntity*) = {
    KeyStealingTakkuri_Type4_Init,
    KeyStealingTakkuri_Type4_Action1,
};
const TmpStruct gUnk_08124158[] = {
    { 0, 32, 32, 8, 0 },
    { -40, 0, 8, 32, 2 },
    { 0, -24, 32, 8, 4 },
    { 40, 0, 8, 32, 6 },
};
const u16 gUnk_08124178[] = {
    64, 336, 64, 608, 208, 512, 416, 496, 384, 352,
};
