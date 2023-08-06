/**
 * @file npc5.c
 * @ingroup NPCs
 *
 * @brief NPC 5
 */
#define NENT_DEPRECATED
#include "collision.h"
#include "functions.h"
#include "hitbox.h"
#include "message.h"
#include "npc.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u16* unk_68;
    /*0x6c*/ u8 unk_6c;
    /*0x6d*/ u8 unused1;
    /*0x6e*/ u16 unk_6e;
    /*0x70*/ u8 unused2[4];
    /*0x74*/ u16 unk_74;
    /*0x76*/ u8 unused3[2];
    /*0x78*/ Entity* unk_78;
} NPC5Entity;

typedef struct {
    u8 unk_0;  // u8
    u8 unk_0b; // u8
    u16 unk_1; // u16
    u16 unk_2; // u16
    u16 unk_3;
    u16 unk_4;
    u16 unk_5; // u16
    u16 unk_6; // u16
    u16 unk_7; // u16
    u16 unk_8; // u16
} UnkHeap;

void sub_08060E70(NPC5Entity*, u32);

u32 sub_08061230(NPC5Entity*);
u32 sub_08060F80(Entity*);
void sub_08060EDC(NPC5Entity*);
void sub_08061090(NPC5Entity*, u32, u32);

bool32 sub_08060FD0(Entity*, u32, u32);
void sub_08061464(NPC5Entity*, u32, u32);
void sub_08061120(NPC5Entity*, u32, u32, u32);
bool32 sub_08061170(NPC5Entity*);

void sub_08061358(NPC5Entity*);
void sub_08060E94(Entity*);
void sub_08060A00(NPC5Entity*);
void sub_08061AA0(NPC5Entity*);
void sub_08061AA8(NPC5Entity*);
void sub_08061B58(NPC5Entity*);
void sub_08060AE0(NPC5Entity*);
void sub_08060B5C(NPC5Entity*);
void sub_08060BA0(NPC5Entity*);
void sub_08060D78(NPC5Entity*);
void sub_08060DD0(NPC5Entity*);
void sub_08060DF4(NPC5Entity*);
void sub_08060DFC(NPC5Entity*);
void sub_08060E34(NPC5Entity*);
void sub_08061ACC(NPC5Entity*);
void sub_08061B18(NPC5Entity*);

u32 PointInsideRadius(s32, s32, s32);

u32 sub_080611D4(Entity*);
extern u32 sub_08079FD4(Entity*, u32);
extern void sub_08016AD2(Entity*);

bool32 sub_08061630(NPC5Entity*, s32, s32, s32);
bool32 sub_08061720(NPC5Entity*, s32, s32, s32);
bool32 sub_080616A8(NPC5Entity*, s32, s32, s32);
bool32 sub_08061798(NPC5Entity*, s32, s32, s32);
bool32 sub_08061888(NPC5Entity*, s32, s32, s32);
bool32 sub_08061978(NPC5Entity*, s32, s32, s32);
bool32 sub_08061810(NPC5Entity*, s32, s32, s32);
bool32 sub_08061900(NPC5Entity*, s32, s32, s32);

bool32 sub_08061A74(u8*, s32, s32, s32);

bool32 sub_08061A1C(u8*, s32, s32, s32);

bool32 sub_080619F0(u8*, s32, s32, s32);

bool32 sub_08061A48(u8*, s32, s32, s32);

void sub_08061AFC(NPC5Entity*);

extern u16* gUnk_0810B660[8];

void CreateZeldaFollower(void) {
    Entity* npc;
    if (CheckGlobalFlag(ZELDA_CHASE) != 0) {
        npc = CreateNPC(ZELDA_FOLLOWER, 0, 0);
        if (npc != NULL) {
            CopyPosition(&gPlayerEntity, npc);
            npc->flags |= ENT_PERSIST;
            npc->animationState = GetAnimationState(npc);
        }
    }
}

// UNUSED zelda follower, probably because it was too resource heavy
void NPC5(NPC5Entity* this) {
    static void (*const gUnk_0810AC1C[])(NPC5Entity*) = {
        sub_08060A00,
        sub_08061AA0,
        sub_08061AA8,
        sub_08061B58,
    };
    gUnk_0810AC1C[super->type](this);
}

void sub_08060A00(NPC5Entity* this) {
    static void (*const Npc5_Actions[])(NPC5Entity*) = {
        sub_08060AE0, sub_08060B5C, sub_08060BA0, sub_08060D78, sub_08060DD0, sub_08060DF4, sub_08060DFC, sub_08060E34,
    };
    u32 tmp;

    if ((gPlayerState.jump_status & 0x80) != 0) {
        if (super->action != 0) {
            if (((((UnkHeap*)super->myHeap)->unk_0) & 4) == 0) {
                ((UnkHeap*)super->myHeap)->unk_0 |= 4;
                ((UnkHeap*)super->myHeap)->unk_5 = (gPlayerEntity.x.HALF.HI & 0xfff0) + 8;
                ((UnkHeap*)super->myHeap)->unk_6 = (gPlayerEntity.y.HALF.HI & 0xfff0) + 8;
            }
        }
    }

    if ((super->action == 0) || (super->spriteSettings.draw != 0)) {
        Npc5_Actions[super->action](this);
    }

    if (super->action != 0) {
        ((UnkHeap*)super->myHeap)->unk_1 = gPlayerEntity.x.HALF.HI;
        ((UnkHeap*)super->myHeap)->unk_2 = gPlayerEntity.y.HALF.HI;
    }
    if (this->unk_74 != gRoomControls.room) {
        this->unk_74 = gRoomControls.room;
        CopyPosition(&gPlayerEntity, super);
        super->action = 1;
        super->spriteSettings.draw = 1;
        super->speed = 0x120;
        tmp = gRoomControls.scroll_direction;
        super->animationState = tmp * 2;
        InitAnimationForceUpdate(super, tmp << 0x19 >> 0x19); // TODO some conversion between u8 and u32?
        super->frameDuration = (Random() & 0x7f) + 0x80;
        ((UnkHeap*)super->myHeap)->unk_0 &= 0xfb;
    }
}

void sub_08060AE0(NPC5Entity* this) {
    UnkHeap* heapObj;
    Entity* otherNpc;

    heapObj = (UnkHeap*)zMalloc(0x14); // TODO UnkHeap struct should have size 0x14?
    if (heapObj != NULL) {
        super->myHeap = (u32*)heapObj;
        heapObj->unk_0b = 0x20;
        super->action = 1;
        COLLISION_ON(super);
        super->animationState &= 3;
        super->collisionFlags = 7;
        super->hurtType = 0x48;
        super->hitType = 0x49;
        super->flags2 = 3;
        super->hitbox = (Hitbox*)&gHitbox_0;
        super->followerFlag &= 0xfe;
        this->unk_6c = 0xff;
        sub_08060E70(this, super->animationState);
        otherNpc = CreateNPC(NPC_UNK_5, 2, 0);
        if (otherNpc != NULL) {
            otherNpc->parent = super;
            this->unk_78 = otherNpc;
        }
    }
}

void sub_08060B5C(NPC5Entity* this) {
    if (sub_08061230(this) == 0) {
        if ((sub_08060F80(super) == 0) &&
            (((GetFacingDirection(super, &gPlayerEntity) + (super->animationState * -4) + 4) & 0x1f)) < 9) {
            super->action = 2;
            super->subtimer = 0;
            return;
        }
        sub_08060EDC(this);
    }
}

void sub_08060BA0(NPC5Entity* this) {
    Entity* r5;
    //! @bug: r5 is uninitialized

    if (sub_08061230(this) != 0) {
        return;
    }
    if ((((UnkHeap*)super->myHeap)->unk_0 & 4) != 0) {
        if ((((UnkHeap*)super->myHeap)->unk_0 & 8) != 0) {
            super->speed = 0x1e0;
            sub_08061120(this, ((UnkHeap*)super->myHeap)->unk_7, ((UnkHeap*)super->myHeap)->unk_8, 0xc);
            sub_08061170(this);
            if (EntityWithinDistance(super, ((UnkHeap*)super->myHeap)->unk_7, ((UnkHeap*)super->myHeap)->unk_8, 4) !=
                0) {
                ((UnkHeap*)super->myHeap)->unk_0 &= 0xf7;
            }
        } else {
            if (sub_08060FD0(super, ((UnkHeap*)super->myHeap)->unk_5, ((UnkHeap*)super->myHeap)->unk_6) != 0) {
                if (EntityWithinDistance(super, ((UnkHeap*)super->myHeap)->unk_5, ((UnkHeap*)super->myHeap)->unk_6,
                                         4) != 0) {
                    ((UnkHeap*)super->myHeap)->unk_0 &= 0xfb;
                    super->action = 5;
                    super->direction = r5->direction;
                    super->speed = 0x160;
                    sub_08060E70(this, 8);
                } else {
                    super->speed = 0x1e0;
                    sub_08061120(this, r5->x.HALF.HI, r5->y.HALF.HI, 0xc);
                    sub_08061170(this);
                }
            } else {
                sub_08061464(this, r5->x.HALF.HI, r5->y.HALF.HI);
            }
        }

    } else {
        if (sub_08060FD0(super, gPlayerEntity.x.HALF.HI, gPlayerEntity.y.HALF.HI) != 0) {
            sub_08061090(this, gPlayerEntity.x.HALF.HI, gPlayerEntity.y.HALF.HI);
            sub_08061170(this);
            ((UnkHeap*)super->myHeap)->unk_0 &= 0xf5;
        } else {
            ((UnkHeap*)super->myHeap) = (UnkHeap*)super->myHeap;
            if ((((UnkHeap*)super->myHeap)->unk_0 & 8) != 0) {
                super->speed = 0x1e0;
                sub_08061120(this, ((UnkHeap*)super->myHeap)->unk_7, ((UnkHeap*)super->myHeap)->unk_8, 0xc);
                sub_08061170(this);
                if (EntityWithinDistance(super, ((UnkHeap*)super->myHeap)->unk_7, ((UnkHeap*)super->myHeap)->unk_8,
                                         4) != 0) {
                    ((UnkHeap*)super->myHeap)->unk_0 &= 0xf7;
                }
            } else {
                if ((((UnkHeap*)super->myHeap)->unk_0 & 2) == 0) {
                    ((UnkHeap*)super->myHeap)->unk_0 |= 2;
                    ((UnkHeap*)super->myHeap)->unk_3 = ((UnkHeap*)super->myHeap)->unk_1;
                    ((UnkHeap*)super->myHeap)->unk_4 = ((UnkHeap*)super->myHeap)->unk_2;
                }
                if (sub_08060FD0(super, ((UnkHeap*)super->myHeap)->unk_3, ((UnkHeap*)super->myHeap)->unk_4) != 0) {
                    super->speed = 0x1e0;
                    sub_08061120(this, ((UnkHeap*)super->myHeap)->unk_3, ((UnkHeap*)super->myHeap)->unk_4, 0xc);
                    sub_08061170(this);
                    if (EntityWithinDistance(super, ((UnkHeap*)super->myHeap)->unk_3, ((UnkHeap*)super->myHeap)->unk_4,
                                             4) != 0) {
                        ((UnkHeap*)super->myHeap)->unk_0 &= 0xfd;
                    }
                } else {
                    ((UnkHeap*)super->myHeap)->unk_0 &= 0xfd;
                    sub_08061464(this, gPlayerEntity.x.HALF.HI, gPlayerEntity.y.HALF.HI);
                }
            }
        }
    }
    if (sub_08060F80(super) != 0) {
        super->action = 1;
        ((UnkHeap*)super->myHeap)->unk_0 &= 0xfb;
        sub_08060E70(this, 0);
    }
}

void sub_08060D78(NPC5Entity* this) {
    sub_08061358(this);
    if (sub_08060F80(super) != 0) {
        if ((u32)super->animIndex - 0x20 < 0x10) {
            if ((super->frame & 7) != 0) {
                super->frameDuration = 1;
                UpdateAnimationSingleFrame(super);
            }
            super->animationState = super->frame & 0x18;
            this->unk_6c = 0xff;
        }
        super->action = 1;
        sub_08060E70(this, 0);
    }
}

void sub_08060DD0(NPC5Entity* this) {
    UpdateAnimationSingleFrame(super);
    if ((super->frame & ANIM_DONE) != 0) {
        super->action = 1;
        sub_08060E70(this, 0);
    }
}

void sub_08060DF4(NPC5Entity* this) {
    sub_08061170(this);
}

void sub_08060DFC(NPC5Entity* this) {
    u32 uVar1;

    LinearMoveUpdate(super);
    sub_08060E94(super);
    uVar1 = GravityUpdate(super, Q_8_8(32.0));
    if (uVar1 == 0) {
        super->action = 7;
        super->collisionLayer = 1;
        UpdateSpriteForCollisionLayer(super);
        sub_08060E70(this, 0x1c);
    }
}

void sub_08060E34(NPC5Entity* this) {
    UpdateAnimationSingleFrame(super);
    if ((super->frame & ANIM_DONE) != 0) {
        super->action = 2;
        super->animationState = DirectionToAnimationState(GetFacingDirection(super, &gPlayerEntity)) * 2;
        sub_08060E70(this, 8);
    }
}

void sub_08060E70(NPC5Entity* this, u32 param) {
    u32 tmp = param + super->animationState / 2;
    if (tmp != super->animIndex) {
        this->unk_6c = param;
        InitAnimationForceUpdate(super, tmp);
    }
}

void sub_08060E94(Entity* this) {
    if (((*(u32*)&this->animIndex & 0x80ff00) == 0x800100) && (this->animIndex < 4)) {
        InitAnimationForceUpdate(this, (this->animationState >> 1));
        this->frameDuration = (Random() & 0x7f) + 0x80;
    } else {
        UpdateAnimationSingleFrame(this);
    }
}

void sub_08060EDC(NPC5Entity* this) {
    s32 tmp;

    if (((u32)super->animIndex - 0x20 < 0x10) && ((super->frame & ANIM_DONE) == 0)) {
        UpdateAnimationSingleFrame(super);
    } else {
        tmp = GetFacingDirection(super, &gPlayerEntity) + super->animationState * -4;
        if (((tmp + 3) & 0x1f) >= 7) {
            if ((tmp & 0x1f) < 0x10) {
                InitAnimationForceUpdate(super, super->animationState + 0x20);
                super->animationState = (super->animationState + 1) & 7;
            } else {
                InitAnimationForceUpdate(super, super->animationState + 0x28);
                super->animationState = (super->animationState - 1) & 7;
            }
        } else {
            if ((super->animationState & 1) == 0) {
                if (((super->frame & ANIM_DONE) != 0) && (0xf >= (u32)super->animIndex - 0x20)) {
                    sub_08060E70(this, 0);
                } else {
                    sub_08060E94(super);
                }
            }
        }
    }
}
u32 sub_08060F80(Entity* this) {
    if (sub_08060FD0(this, (s32)gPlayerEntity.x.HALF.HI, (s32)gPlayerEntity.y.HALF.HI) == 0) {
        return 0;
    }
    ((UnkHeap*)this->myHeap)->unk_0 &= 0xfb;
    if (PointInsideRadius(gPlayerEntity.x.HALF.HI - this->x.HALF.HI, gPlayerEntity.y.HALF.HI - this->y.HALF.HI,
                          ((UnkHeap*)this->myHeap)->unk_0b) != 0) {
        return 1;
    }
    return 0;
}

bool32 sub_08060FD0(Entity* this, u32 a, u32 b) {
    s32 sVar1;
    s32 sVar2;
    int iVar3;
    int x;
    int y;
    u8* puVar8;

    x = this->x.HALF.HI;
    y = this->y.HALF.HI;
    iVar3 = sub_080045DA(a - x, b - y);
    x <<= 8;
    y <<= 8;
    sVar1 = gSineTable[iVar3] * 6;
    sVar2 = gSineTable[(iVar3 + 0x40)] * 6;

    if (this->collisionLayer != 2) {
        puVar8 = gMapBottom.collisionData;
    } else {
        puVar8 = gMapTop.collisionData;
    }

    while (1) {
        if (IsTileCollision(puVar8, x / 0x100, y / 0x100, 6)) {
            return 0;
        }
        if (((a - (x / 0x100)) + 6 >= 0xd) || ((b - (y / 0x100)) + 6 >= 0xd)) {
            x += sVar1;
            y -= sVar2;
            continue;
        }
        return 1;
    }
}

void sub_08061090(NPC5Entity* this, u32 a, u32 b) {
    s32 xDist;
    s32 yDist;
    s32 sqrDist;
    u32 tmp;

    xDist = gPlayerEntity.x.HALF.HI - super->x.HALF.HI;
    yDist = gPlayerEntity.y.HALF.HI - super->y.HALF.HI;
    sqrDist = (xDist * xDist) + (yDist * yDist);
    if (sqrDist < 0x900) {
        super->speed = 0x120;
    } else {
        if (sqrDist < 0x1900) {
            super->speed = ((sqrDist - 0x900) >> 4) + 0x120;
        } else {
            super->speed = 0x220;
        }
    }
    if (super->speed == 0x120) {
        tmp = 4;
    } else if (super->speed < 0x160) {
        tmp = 8;
    } else {
        tmp = 0xc;
    }
    sub_08061120(this, a, b, tmp);
}

void sub_08061120(NPC5Entity* this, u32 param_a, u32 param_b, u32 param_c) {
    super->direction = CalculateDirectionTo(super->x.HALF.HI, super->y.HALF.HI, param_a, param_b);
    if ((param_c != this->unk_6c) || (10 < ((super->direction + super->animationState * -4 + 5) & 0x1f))) {
        super->animationState = DirectionRoundUp(super->direction) >> 2;
        sub_08060E70(this, param_c);
    }
}

bool32 sub_08061170(NPC5Entity* this) {
    u32 direction;
    u32 tmp;

    UpdateAnimationSingleFrame(super);
    if (ProcessMovement6(super) == 0) {
        direction = sub_080611D4(super);
        if (direction != 0xff) {
            super->action = 6;
            tmp = (sub_08079FD4(super, 1));
            tmp <<= 4;
            tmp -= 4;
            tmp = tmp << 0xc;
            super->zVelocity = tmp;
            super->speed = 0x100;
            super->direction = direction;
            super->animationState = direction >> 2;
            if (tmp >> 0x10 != 0) {
                sub_08060E70(this, 0x14);
            } else {
                sub_08060E70(this, 0x18);
            }
        }
        return FALSE;
    } else {
        sub_08016AD2(super);
        return TRUE;
    }
}

u32 sub_080611D4(Entity* this) {
    static const struct {
        s8 unk_0;
        s8 unk_1;
    } PACKED gUnk_0810AC4C[] = {
        { 0, -8 },
        { 8, 0 },
        { 0, 3 },
        { -8, 0 },
    };

    static const u8 gUnk_0810AC54[] = {
        0x2b, 0x10, 0x2a, 0x0, 0x2d, 0x8, 0x2c, 0x18, 0x0,
    };

    u32 uVar2;
    u32 x;
    s32 a;
    s32 b;
    s8* ptr;
    const u8* ptr2;
    x = this->animationState & 6;
    ptr = (s8*)gUnk_0810AC4C;
    a = ptr[x];
    b = ptr[x + 1];
    uVar2 = GetRelativeCollisionTile(this, a, b);
    ptr2 = gUnk_0810AC54;

    do {
        if (*ptr2 != uVar2 || this->animationState != (ptr2[1] >> 2)) {
            continue;
        }

        ++this->subtimer;

        if (this->subtimer < 8) {
            return 0xff;
        }

        return ptr2[1];
    } while (ptr2 += 2, *ptr2 != 0);

    this->subtimer = 0;

    return 0xff;
}

u32 sub_08061230(NPC5Entity* this) {
    if ((((UnkHeap*)super->myHeap)->unk_0 & 1) == 0) {
        if ((super->contactFlags & 0x80) != 0) {
            switch (super->contactFlags & 0x7f) {
                case 0:
                case 1:
                case 2:
                case 3:
                case 0xf:
                case 0x13:
                case 0x1b:
                case 0x1e:
                case 0x1f:
                    break;
                default:
                    ((UnkHeap*)super->myHeap)->unk_0 = ((UnkHeap*)super->myHeap)->unk_0 | 1;
                    InitAnimationForceUpdate(super, (super->animationState >> 1) + 0x40);
                    return 1;
            }
        }
    } else {
        UpdateAnimationSingleFrame(super);
        if ((super->frame & ANIM_DONE) == 0) {
            return 1;
        }
        ((UnkHeap*)super->myHeap)->unk_0 &= 0xfe;
        InitAnimationForceUpdate(super, this->unk_6c + (super->animationState >> 1));
    }
    super->contactFlags = super->contactFlags & 0x7f;
    if (super->iframes != 0) {
        super->iframes++;
    }
    return 0;
}

void sub_08061358(NPC5Entity* this) {
    static const u8 gUnk_0810AC5D[] = {
        0x30, 0x31, 0x38, 0x39, 0x32, 0x33, 0x3a, 0x3b, 0x34, 0x35, 0x3c, 0x3d, 0x36, 0x37, 0x3e, 0x3f, 0x0, 0x0, 0x0,
    };
    u32 uVar2;
    u32 bVar4;

    switch (super->subAction) {
        case 0:
            UpdateAnimationSingleFrame(super);
            if ((super->frame & ANIM_DONE) == 0) {
                return;
            }
            super->subAction = 1;
            super->timer = 15;
            sub_08060E70(this, 0);
            break;
        case 1:
            super->timer--;
            if (super->timer != 0) {
                return;
            }
            uVar2 = Random();
            bVar4 = uVar2;
            if ((uVar2 & 1) == 0) {
                super->subAction = 3;
                super->timer = (bVar4 & 0x18) + 30;
                sub_08060E70(this, 4);
                return;
            }
            super->subAction = 2;
            InitAnimationForceUpdate(super, gUnk_0810AC5D[(u32)super->animationState * 2 + ((uVar2 >> 4) & 3)]);
            break;
        case 2:
            UpdateAnimationSingleFrame(super);
            if ((super->frame & ANIM_DONE) == 0) {
                return;
            }
            super->animationState = ((super->frame & 0x18) >> 2);
            if ((Random() & 1)) {
                super->subAction = 3;
                super->timer = (bVar4 & 0x18) + 30;
                sub_08060E70(this, 4);
                return;
            }
            super->subAction = 0;
            sub_08060E70(this, 0x10);
            break;
        case 3:
            if (sub_08061170(this) == 0) {
                super->subAction = 2;

                //! @bug bVar4 (r6) is uninitialized.
                InitAnimationForceUpdate(super, gUnk_0810AC5D[super->animationState * 2 + (bVar4 >> 4 & 3)]);
                return;
            }
            if (--super->timer != 0) {
                return;
            }
            super->subAction = 0;
            sub_08060E70(this, 0x10);
            break;
    }
}

void sub_08061464(NPC5Entity* this, u32 param_a, u32 param_b) {
    s32 iVar10;
    s32 iVar9;
    u32 bVar1;

    iVar10 = super->x.HALF.HI;
    iVar9 = super->y.HALF.HI;

    switch (((CalculateDirectionTo(super->x.HALF.HI, super->y.HALF.HI, param_a, param_b) + 2) & 0x1c) >> 2) {
        case 0:
            this->unk_6e = param_b;
            if (super->x.HALF.HI > (s32)param_a) {
                sub_08061630(this, iVar10, iVar9 + -8, param_a);
                break;
            }
            sub_080616A8(this, iVar10, iVar9 + -8, param_a);
            break;
        case 1:
            this->unk_6e = param_a;
            if (sub_08061720(this, iVar10 + 8, iVar9, param_b) != 0)
                break;
            this->unk_6e = param_b;
            sub_080616A8(this, iVar10, iVar9 + -8, param_a);
            break;
        case 2:
            this->unk_6e = param_a;
            if (super->y.HALF.HI > (s32)param_b) {
                sub_08061720(this, iVar10 + 8, iVar9, param_b);
            } else {
                sub_08061798(this, iVar10 + 8, iVar9, param_b);
            }
            break;
        case 3:
            this->unk_6e = param_a;
            if (sub_08061798(this, iVar10 + 8, iVar9, param_b) != 0)
                break;
            this->unk_6e = param_b;
            sub_08061888(this, iVar10, iVar9 + 8, param_a);
            break;
        case 4:
            this->unk_6e = param_b;
            if (super->x.HALF.HI > (s32)param_a) {
                sub_08061810(this, iVar10, iVar9 + 8, param_a);
                break;
            }
            sub_08061888(this, iVar10, iVar9 + 8, param_a);
            break;
        case 5:
            this->unk_6e = param_a;
            if (sub_08061978(this, iVar10 + -8, iVar9, param_b) != 0)
                break;
            this->unk_6e = param_b;
            sub_08061810(this, iVar10, iVar9 + 8, param_a);
            break;
        case 6:
            this->unk_6e = param_a;
            if (super->y.HALF.HI > (s32)param_b) {
                sub_08061900(this, iVar10 + -8, iVar9, param_b);
            } else {
                sub_08061978(this, iVar10 + -8, iVar9, param_b);
            }
            break;
        case 7:
            this->unk_6e = param_a;
            if (sub_08061900(this, iVar10 + -8, iVar9, param_b) == 0) {
                this->unk_6e = param_b;
                sub_08061630(this, iVar10, iVar9 + -8, param_a);
            }
    }
    bVar1 = ((UnkHeap*)super->myHeap)->unk_0 & 8;
    if (bVar1 == 0) {
        super->action = 3;
        super->subAction = bVar1;
    }
}

bool32 sub_08061630(NPC5Entity* this, s32 x, s32 y, s32 param) {
    u32 param_y = y;
    u8* layer = (super->collisionLayer == 2) ? gMapTop.collisionData : gMapBottom.collisionData;
    while (!IsTileCollision(layer, x, y, 6)) {
        if (sub_08061A74(layer, x, y, param)) {
            ((UnkHeap*)super->myHeap)->unk_7 = x;
            ((UnkHeap*)super->myHeap)->unk_8 = param_y;
            ((UnkHeap*)super->myHeap)->unk_0 |= 8;
            if (this->unk_6e >= y) {
                return TRUE;
            }
        }
        y -= 8;
    }
    return FALSE;
}

bool32 sub_080616A8(NPC5Entity* this, s32 x, s32 y, s32 param) {
    u32 param_y = y;
    u8* layer = (super->collisionLayer == 2) ? gMapTop.collisionData : gMapBottom.collisionData;
    while (!IsTileCollision(layer, x, y, 6)) {
        if (sub_08061A1C(layer, x, y, param)) {
            ((UnkHeap*)super->myHeap)->unk_7 = x;
            ((UnkHeap*)super->myHeap)->unk_8 = param_y;
            ((UnkHeap*)super->myHeap)->unk_0 |= 8;
            if (this->unk_6e >= y) {
                return TRUE;
            }
        }
        y -= 8;
    }
    return FALSE;
}

bool32 sub_08061720(NPC5Entity* this, s32 x, s32 y, s32 param) {
    u32 param_x = x;
    u8* layer = (super->collisionLayer == 2) ? gMapTop.collisionData : gMapBottom.collisionData;
    while (!IsTileCollision(layer, x, y, 6)) {
        if (sub_080619F0(layer, x, y, param)) {
            ((UnkHeap*)super->myHeap)->unk_7 = param_x;
            ((UnkHeap*)super->myHeap)->unk_8 = y;
            ((UnkHeap*)super->myHeap)->unk_0 |= 8;
            if (this->unk_6e <= x) {
                return TRUE;
            }
        }
        x += 8;
    }
    return FALSE;
}

bool32 sub_08061798(NPC5Entity* this, s32 x, s32 y, s32 param) {
    u32 param_x = x;
    u8* layer = (super->collisionLayer == 2) ? gMapTop.collisionData : gMapBottom.collisionData;
    while (!IsTileCollision(layer, x, y, 6)) {
        if (sub_08061A48(layer, x, y, param)) {
            ((UnkHeap*)super->myHeap)->unk_7 = param_x;
            ((UnkHeap*)super->myHeap)->unk_8 = y;
            ((UnkHeap*)super->myHeap)->unk_0 |= 8;
            if (this->unk_6e <= x) {
                return TRUE;
            }
        }
        x += 8;
    }
    return FALSE;
}

bool32 sub_08061810(NPC5Entity* this, s32 x, s32 y, s32 param) {
    u32 param_y = y;
    u8* layer = (super->collisionLayer == 2) ? gMapTop.collisionData : gMapBottom.collisionData;
    while (!IsTileCollision(layer, x, y, 6)) {
        if (sub_08061A74(layer, x, y, param)) {
            ((UnkHeap*)super->myHeap)->unk_7 = x;
            ((UnkHeap*)super->myHeap)->unk_8 = param_y;
            ((UnkHeap*)super->myHeap)->unk_0 |= 8;
            if (this->unk_6e <= y) {
                return TRUE;
            }
        }
        y += 8;
    }
    return FALSE;
}

bool32 sub_08061888(NPC5Entity* this, s32 x, s32 y, s32 param) {
    u32 param_y = y;
    u8* layer = (super->collisionLayer == 2) ? gMapTop.collisionData : gMapBottom.collisionData;
    while (!IsTileCollision(layer, x, y, 6)) {
        if (sub_08061A1C(layer, x, y, param)) {
            ((UnkHeap*)super->myHeap)->unk_7 = x;
            ((UnkHeap*)super->myHeap)->unk_8 = param_y;
            ((UnkHeap*)super->myHeap)->unk_0 |= 8;
            if (this->unk_6e <= y) {
                return TRUE;
            }
        }
        y += 8;
    }
    return FALSE;
}

bool32 sub_08061900(NPC5Entity* this, s32 x, s32 y, s32 param) {
    u32 param_x = x;
    u8* layer = (super->collisionLayer == 2) ? gMapTop.collisionData : gMapBottom.collisionData;
    while (!IsTileCollision(layer, x, y, 6)) {
        if (sub_080619F0(layer, x, y, param)) {
            ((UnkHeap*)super->myHeap)->unk_7 = param_x;
            ((UnkHeap*)super->myHeap)->unk_8 = y;
            ((UnkHeap*)super->myHeap)->unk_0 |= 8;
            if (this->unk_6e >= x) {
                return TRUE;
            }
        }
        x -= 8;
    }
    return FALSE;
}

bool32 sub_08061978(NPC5Entity* this, s32 x, s32 y, s32 param) {
    u32 param_x = x;
    u8* layer = (super->collisionLayer == 2) ? gMapTop.collisionData : gMapBottom.collisionData;
    while (!IsTileCollision(layer, x, y, 6)) {
        if (sub_08061A48(layer, x, y, param)) {
            ((UnkHeap*)super->myHeap)->unk_7 = param_x;
            ((UnkHeap*)super->myHeap)->unk_8 = y;
            ((UnkHeap*)super->myHeap)->unk_0 |= 8;
            if (this->unk_6e >= x) {
                return TRUE;
            }
        }
        x -= 8;
    }
    return FALSE;
}

bool32 sub_080619F0(u8* layer, s32 x, s32 y, s32 param) {
    while (param <= y) {
        if (IsTileCollision(layer, x, y, 6) != 0) {
            return FALSE;
        }
        y -= 8;
    }
    return TRUE;
}

bool32 sub_08061A1C(u8* layer, s32 x, s32 y, s32 param) {
    while (param >= x) {
        if (IsTileCollision(layer, x, y, 6) != 0) {
            return FALSE;
        }
        x += 8;
    }
    return TRUE;
}

bool32 sub_08061A48(u8* layer, s32 x, s32 y, s32 param) {
    while (param >= y) {
        if (IsTileCollision(layer, x, y, 6) != 0) {
            return FALSE;
        }
        y += 8;
    }
    return TRUE;
}

bool32 sub_08061A74(u8* layer, s32 x, s32 y, s32 param) {
    while (param <= x) {
        if (IsTileCollision(layer, x, y, 6) != 0) {
            return FALSE;
        }
        x -= 8;
    }
    return TRUE;
}

void sub_08061AA0(NPC5Entity* this) {
    DeleteThisEntity();
}

void sub_08061AA8(NPC5Entity* this) {
    static void (*const gUnk_0810AC70[])(NPC5Entity*) = {
        sub_08061ACC,
        sub_08061B18,
    };
    gUnk_0810AC70[super->action](this);
    CopyPosition(super->parent, super);
}

void sub_08061ACC(NPC5Entity* this) {
    super->flags = super->flags | ENT_PERSIST;
    super->action = 1;
    super->subAction = 0xff;
    super->timer = 0;
    super->followerFlag = super->followerFlag & 0xfe;
    AddInteractableWhenBigObject(super);
    sub_08061AFC(this);
}

void sub_08061AFC(NPC5Entity* this) {
    u32 tmp = 0;
    if (super->subAction != 0) {
        super->subAction = tmp;
        this->unk_68 = gUnk_0810B660[0];
        super->timer = 0;
    }
}

void sub_08061B18(NPC5Entity* this) {
    u16* puVar2;

    switch (super->interactType) {
        case 0:
            break;
        case 1:
            super->interactType = 0;
            sub_08061AFC(this);
            puVar2 = this->unk_68;
            puVar2 += (super->timer++);
            if (puVar2[1] == 0) {
                super->timer = 0;
            }
            MessageNoOverlap(puVar2[0], super);
            break;
    }
}

void sub_08061B58(NPC5Entity* this) {
    if (super->action == 0) {
        super->action = 1;
        InitAnimationForceUpdate(super, 2);
    }
    if (gRoomTransition.entity_update_type == 2) {
        UpdateAnimationSingleFrame(super);
    }
    sub_0806FD3C(super);
}
