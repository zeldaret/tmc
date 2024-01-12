/**
 * @file pullableMushroom.c
 * @ingroup Objects
 *
 * @brief Pullable Mushroom object
 */
#include "functions.h"
#include "game.h"
#include "hitbox.h"
#include "object.h"
#include "tiles.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unk_68[0x8];
    /*0x70*/ u32 unk_70;
    /*0x74*/ u32 unk_74;
    /*0x78*/ u32 unk_78;
    /*0x7c*/ u32 unk_7c;
} PullableMushroomEntity;

extern const s8 gUnk_08126EE4[];

void PullableMushroom_Init(PullableMushroomEntity*);
void PullableMushroom_Action1(PullableMushroomEntity*);
void PullableMushroom_Action2(PullableMushroomEntity*);
void PullableMushroom_Action3(PullableMushroomEntity*);
void PullableMushroom_Action1_Type0(PullableMushroomEntity*);
void PullableMushroom_Action1_Type1(PullableMushroomEntity*);
void sub_0808ABC4(PullableMushroomEntity*);
void sub_0808ACEC(PullableMushroomEntity*);
void sub_0808ADA0(PullableMushroomEntity*);
void sub_0808ADF0(PullableMushroomEntity*);
void sub_0808AEB0(PullableMushroomEntity*);
void sub_0808AFD4(PullableMushroomEntity*);
void sub_0808B05C(PullableMushroomEntity*);
void sub_0808B0BC(PullableMushroomEntity*);
void sub_0808B168(PullableMushroomEntity*, u32);
u32 sub_0808B1F0(PullableMushroomEntity*, Entity*);
bool32 sub_0808B21C(PullableMushroomEntity*, u32);

void PullableMushroom(PullableMushroomEntity* this) {
    static void (*const PullableMushroom_Actions[])(PullableMushroomEntity*) = {
        PullableMushroom_Init,
        PullableMushroom_Action1,
        PullableMushroom_Action2,
        PullableMushroom_Action3,
    };
    PullableMushroom_Actions[super->action](this);
    super->contactFlags = 0;
}

void PullableMushroom_Init(PullableMushroomEntity* this) {
    super->action = 1;
    if (AreaIsDungeon() == 0) {
        ChangeObjPalette(super, 0);
    }
    switch (super->type) {
        case 0:
            super->spritePriority.b0 = 4;
            super->hitbox = (Hitbox*)&gUnk_080FD224;
            super->carryFlags = 1;
            SetTile(SPECIAL_TILE_34, COORD_TO_TILE(super), super->collisionLayer);
            super->health = 1;
            super->collisionFlags = 7;
            super->hitType = 0x6e;
            super->collisionMask = 0x0e;
            super->gustJarFlags = 1;
            COLLISION_ON(super);
            super->spriteOffsetY = 4;
            break;
        case 1:
            super->spritePriority.b0 = 4;
            if (super->type2 != 0) {
                super->hitbox = (Hitbox*)&gUnk_080FD224;
                super->flags |= 0x80;
                super->health = 1;
                super->collisionFlags = 7;
                super->hitType = 0x6e;
                super->collisionMask = 4;
                super->gustJarFlags = 1;
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
    PullableMushroom_Action1(this);
}

void PullableMushroom_Action1(PullableMushroomEntity* this) {
    static void (*const funcs[])(PullableMushroomEntity*) = {
        PullableMushroom_Action1_Type0,
        PullableMushroom_Action1_Type1,
        sub_0808ABC4,
    };
    funcs[super->type](this);
}

void PullableMushroom_Action1_Type0(PullableMushroomEntity* this) {
    static void (*const funcs[])(PullableMushroomEntity*) = {
        sub_0808ACEC,
        sub_0808ADA0,
        sub_0808ADF0,
    };
    funcs[super->subAction](this);
}

void PullableMushroom_Action1_Type1(PullableMushroomEntity* this) {
    if (super->parent->action == 1 && super->parent->subAction == 2) {
        super->parent->child = NULL;
        DeleteThisEntity();
    } else if (super->parent->action == 2) {
        sub_0808B168(this, 0);
    }
}

void sub_0808ABC4(PullableMushroomEntity* this) {
    static const s8 gUnk_081211CC[] = { 0, -128, 0, -6, 0, 0, 5, -4, 0, 0, 0, 0, 0, -128, -5, -4 };
    u32 tmp;
    const s8* ptr;

    if (super->parent->action == 1 && super->parent->subAction == 2) {
        DeleteThisEntity();
    }
    tmp = sub_0808B1F0((PullableMushroomEntity*)super->child, super->parent);
    if (tmp < 8) {
        tmp = 0;
    }
    ptr = &gUnk_081211CC[super->animationState * 4];
    if (tmp < 0x20) {
        if (tmp != 0) {
            tmp -= 6;
        }
        this->unk_70 = (*(u16*)ptr);
        super->x.HALF.HI = (s16)ptr[2] + super->parent->x.HALF.HI;
        super->y.HALF.HI = (s16)ptr[3] + super->parent->y.HALF.HI;
        if (super->animationState & 1) {
            this->unk_74 = 0x200 - (tmp << 4);
            this->unk_78 = (tmp << 3) + 0x120;
            super->frameIndex = 0x0f;
        } else {
            this->unk_78 = 0x200 - (tmp << 4);
            this->unk_74 = (tmp << 3) + 0x120;
            super->frameIndex = 0x14;
        }
    } else if (super->animationState & 1) {
        this->unk_74 = 0x100 - 4 * (tmp - 0x20);
        this->unk_78 = (tmp << 3) + 0x140;
        super->frameIndex = 0x10;
        if (super->animationState & 2) {
            super->x.HALF.HI = (super->parent)->x.HALF.HI - (tmp >> 1);
        } else {
            super->x.HALF.HI = (super->parent)->x.HALF.HI + (tmp >> 1);
        }
    } else {
        this->unk_78 = 0x100 - 4 * (tmp - 0x20);
        this->unk_74 = (tmp << 3) + 0x140;
        super->frameIndex = 0x15;
        if (super->animationState & 2) {
            super->y.HALF.HI = (super->parent)->y.HALF_U.HI + (tmp >> 1) + ptr[3];
        } else {
            super->y.HALF.HI = (super->parent)->y.HALF_U.HI - (tmp >> 1) + ptr[3];
        }
    }
    SetAffineInfo(super, this->unk_74, this->unk_78, this->unk_70);
}

void sub_0808ACEC(PullableMushroomEntity* this) {
    if (super->animIndex != 0) {
        InitializeAnimation(super, 0);
    }

    switch (super->contactFlags & 0x7f) {
        case 0x4:
        case 0x5:
        case 0x6:
        case 0x8:
        case 0x9:
        case 0xa:
        case 0xb:
        case 0xc:
        case 0xd:
        case 0x10:
        case 0x11:
        case 0x12:
        case 0x14:
        case 0x16:
            COLLISION_OFF(super);
            super->animationState = GetAnimationStateForDirection4(super->knockbackDirection);
            super->subAction = 2;
            super->timer = 2;
            break;
        case 0x13:
            super->action = 3;
            super->subAction = 0;
            break;
        default:
            super->subtimer = 0;
            super->timer = 0;
            RegisterCarryEntity(super);
            break;
    }
}

void sub_0808ADA0(PullableMushroomEntity* this) {
    if ((sub_0808B1F0(this, super->child) < 8) || (super->child == NULL)) {
        super->subAction++;
        super->timer = 2;
        super->flags |= ENT_COLLIDE;
        super->animationState ^= 2;
        super->spritePriority.b0 = 4;
    } else {
        super->child->speed = 0x400;
        LinearMoveUpdate(super->child);
    }
}

void sub_0808ADF0(PullableMushroomEntity* this) {
    if (super->animationState + 0xd == super->animIndex) {
        if ((super->frame & ANIM_DONE) != 0) {
            super->subAction = 0;
            super->flags |= ENT_COLLIDE;
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
            if (((super->frame & ANIM_DONE) != 0) && (super->timer-- == 0)) {
                InitializeAnimation(super, super->animationState + 0xd);
            }
        }
    }
}

void PullableMushroom_Action2(PullableMushroomEntity* this) {
    static void (*const funcs[])(PullableMushroomEntity*) = {
        sub_0808AEB0,
        sub_0808AFD4,
    };
    if (gPlayerState.heldObject == 0) {
        super->subAction = 6;
    }
    funcs[super->subAction - 5](this);
}

void sub_0808AEB0(PullableMushroomEntity* this) {
    static const u16 gUnk_081211E4[] = { 1024, 256, 2048, 512 };
    u32 uVar1;
    if (super->timer != 0) {
        uVar1 = sub_0808B1F0(this, super->child);
        if ((gPlayerState.playerInput.heldInput & gUnk_081211E4[super->animationState]) != 0) {
            GetNextFrame(super);
            if (uVar1 < 0x40) {
                sub_080044AE(&gPlayerEntity.base, 0x40, super->direction);
                if (this->unk_7c-- == 0) {
                    this->unk_7c = 4;
                    SoundReq(SFX_12F);
                }
            }
            super->subtimer = 1;

        } else {
            if (((super->subtimer != 0) && (gPlayerEntity.base.action == PLAYER_NORMAL)) &&
                (gPlayerState.swim_state == 0)) {
                gPlayerState.queued_action = PLAYER_08072C9C;
                gPlayerState.field_0x38 = uVar1;
                gPlayerState.field_0x39 = super->direction ^ 0x10;
                gPlayerState.field_0x3a = sub_0808B1F0(this, &gPlayerEntity.base);
                super->subAction++;
            }
        }
    } else {
        super->timer = 1;
        this->unk_7c = 1;
        super->animationState = AnimationStateFlip90(gPlayerEntity.base.animationState >> 1);
        super->direction = (super->animationState << 3);
        COLLISION_OFF(super);
        super->spriteSettings.flipX = gPlayerEntity.base.spriteSettings.flipX;
        InitializeAnimation(super, super->animationState + 5);
        if (sub_0808B21C(this, 0)) {
            sub_0808B168((PullableMushroomEntity*)super->child, 0);
        }
        if ((super->animationState & 1) != 0) {
            gPlayerEntity.base.y.HALF.HI = super->y.HALF.HI;
        } else {
            gPlayerEntity.base.x.HALF.HI = super->x.HALF.HI;
        }
    }
}

void sub_0808AFD4(PullableMushroomEntity* this) {
    super->action = 1;
    super->subAction = 1;
    (super->child)->direction = DirectionTurnAround(super->direction);
    SoundReq(SFX_130);
}

void PullableMushroom_Action3(PullableMushroomEntity* this) {
    static void (*const funcs[])(PullableMushroomEntity*) = {
        sub_0808B05C,
        sub_0808B0BC,
    };

    funcs[super->subAction](this);
    if ((((gPlayerState.gustJarState & 0xf) != 1) || ((super->contactFlags & 0x7f) != 0x13)) && (super->type == 1)) {
        (super->parent)->action = 1;
        (super->parent)->subAction = 1;
        super->direction = DirectionTurnAround(super->parent->direction);
        super->parent->flags &= ~ENT_COLLIDE;
        super->flags &= ~ENT_COLLIDE;
        super->action = 1;
        SoundReq(SFX_130);
    }
}

void sub_0808B05C(PullableMushroomEntity* this) {
    if (super->type == 0) {
        super->animationState = AnimationStateFlip90(gPlayerEntity.base.animationState >> 1);
        super->direction = super->animationState << 3;
        super->spriteSettings.flipX = gPlayerEntity.base.spriteSettings.flipX;
        COLLISION_OFF(super);
        InitializeAnimation(super, super->animationState + 5);
        if (sub_0808B21C(this, 1)) {
            sub_0808B168((PullableMushroomEntity*)super->child, 1);
        }
    }
    super->subAction++;
}

void sub_0808B0BC(PullableMushroomEntity* this) {
    u32 uVar2;
    const s8* ptr;
    GenericEntity ent;

    uVar2 = sub_0808B1F0(this, super->parent);
    switch (super->type) {
        case 0:
            GetNextFrame(super);
            break;
        case 1:
            ptr = &gUnk_08126EE4[gPlayerEntity.base.animationState & 0xe];
            ent.base.x.HALF.HI = ptr[0] + gPlayerEntity.base.x.HALF.HI;
            ent.base.y.HALF.HI = ptr[1] + gPlayerEntity.base.y.HALF.HI;
            if (sub_0800419C(&ent.base, super, 7, 7)) {
                if ((gPlayerEntity.base.action != PLAYER_NORMAL) || (gPlayerState.swim_state != 0))
                    return;
                gPlayerState.queued_action = PLAYER_08072C9C;
                gPlayerState.field_0x38 = uVar2;
                gPlayerState.field_0x39 = super->direction ^ 0x10;
                gPlayerState.field_0x3a = sub_0808B1F0((PullableMushroomEntity*)super->parent, &gPlayerEntity.base);
            } else {
                super->speed = 0x40;
                if (uVar2 < 0x40) {
                    LinearMoveUpdate(super);
                }
            }
            break;
    }
}

void sub_0808B168(PullableMushroomEntity* this, u32 param_2) {
    static const s8 gUnk_081211F4[] = {
        0, 8, -8, -4, 0, -8, 8, -4,
    };
    static const s8 gUnk_081211FC[] = {
        0, 3, -8, -4, 0, -12, 8, -4,
    };
    s32 iVar2;
    const s8* pcVar3;
    u32 uVar4;
    const s8* pcVar5;
    Entity* pEVar5;
    Entity* pEVar6;

    if (param_2 != 0) {
        iVar2 = AnimationStateFlip90(super->animationState) * 2;
        pcVar5 = (gUnk_081211F4 + iVar2);
        pcVar3 = pcVar5 + 1;
        pEVar5 = super->parent;
        pEVar6 = pEVar5;
    } else {
        if ((super->animationState & 1) != 0) {
            pEVar6 = &gPlayerEntity.base;
            pEVar5 = super->parent;
            pcVar5 = (gUnk_081211FC + super->animationState * 2);
            pcVar3 = (gUnk_081211F4 + 1 + AnimationStateFlip90(super->animationState) * 2);
        } else {
            pEVar6 = super->parent;
            pEVar5 = &gPlayerEntity.base;
            pcVar5 = (gUnk_081211F4 + AnimationStateFlip90(super->animationState) * 2);
            pcVar3 = (gUnk_081211FC + 1 + super->animationState * 2);
        }
    }
    super->x.HALF.HI = *pcVar5 + pEVar6->x.HALF.HI;
    super->y.HALF.HI = *pcVar3 + pEVar5->y.HALF.HI;
}

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
