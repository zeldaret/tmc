/**
 * @file frozenOctorok.c
 * @ingroup Objects
 *
 * @brief Frozen Octorok object
 */
#include "enemy/octorokBoss.h"
#include "functions.h"
#include "message.h"
#include "object.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unk_68[0xc];
    /*0x74*/ u16 unk_74;
    /*0x76*/ u16 unk_76;
    /*0x78*/ u8 unk_78;
    /*0x79*/ u8 unk_79;
    /*0x7a*/ u8 unk_7a;
    /*0x7b*/ u8 unk_7b;
    /*0x7c*/ u8 unk_7c[2];
    /*0x7e*/ u16 unk_7e;
    /*0x7f*/ u8 unk_7f[4];
    /*0x84*/ OctorokBossHeap* heap;
} FrozenOctorokEntity;

void FrozenOctorok_Init(FrozenOctorokEntity*);
void FrozenOctorok_Action1(FrozenOctorokEntity*);
void FrozenOctorok_Action1SubAction0(FrozenOctorokEntity*);
void FrozenOctorok_Action1SubAction1(FrozenOctorokEntity*);
void FrozenOctorok_Action1SubAction2(FrozenOctorokEntity*);
void FrozenOctorok_Action1SubAction3(FrozenOctorokEntity*);
void FrozenOctorok_Action1SubAction4(FrozenOctorokEntity*);
void FrozenOctorok_Action1SubAction5(FrozenOctorokEntity*);
void FrozenOctorok_Action1SubAction6(FrozenOctorokEntity*);
void FrozenOctorok_Action1SubAction7(FrozenOctorokEntity*);
void FrozenOctorok_ChangeObjPaletteOfChildren(FrozenOctorokEntity*, u32);
void sub_0809CBE4(FrozenOctorokEntity*);
void sub_0809CB70(FrozenOctorokEntity*, s32, s32);

extern const u8 gUnk_08123E1C[];

void FrozenOctorok(FrozenOctorokEntity* this) {
    static void (*const FrozenOctorok_Actions[])(FrozenOctorokEntity*) = {
        FrozenOctorok_Init,
        FrozenOctorok_Action1,
    };
    FrozenOctorok_Actions[super->action](this);
    super->spriteRendering.b3 = 3;
}

const u8 gUnk_08123DDC[] = {
    9, 4, 0, 0, 1, 5, 0, 0, 1, 4, 0, 0, 1, 3, 0, 0, 1, 2, 0, 0, 2, 1, 0, 0, 10, 4, 0, 0,
};

void FrozenOctorok_Init(FrozenOctorokEntity* this) {
    OctorokBossHeap* heap;
    FrozenOctorokEntity* obj1;
    FrozenOctorokEntity* obj2;
    u32 i;
    u32 type;

    super->action = 1;
    switch (super->type) {
        case 0:
            SetEntityPriority(super, 6);
            this->unk_7e = 0;
        case 6:
            super->timer = 1;
            super->direction = 0x10;
            this->unk_79 = 0xf0;
            super->x.HALF.HI = gRoomControls.origin_x + 0x108;
            super->y.HALF.HI = gRoomControls.origin_y + 0x168;
            super->spriteRendering.b0 = 3;
            this->unk_76 = 0xa0;
            this->unk_74 = 0xa0;
            this->unk_7b = -0x80;
            if (super->type == 0) {
                super->spriteOffsetX = 0x29;
                super->spriteOffsetY = -0x20;
                heap = (OctorokBossHeap*)zMalloc(sizeof(OctorokBossHeap));
                this->heap = heap;
                if (heap == NULL) {
                    DeleteThisEntity();
                    return;
                }
                super->myHeap = heap;
                MEMORY_BARRIER;
                this->heap->tailCount = 5;

                for (i = 0; i < 4; i++) {
                    super->child = CreateObjectWithParent(super, FROZEN_OCTOROK, i + 1, 0);
                    if (super->child != NULL) {
                        ((FrozenOctorokEntity*)super->child)->heap = this->heap;
                        MEMORY_BARRIER;
                        this->heap->legObjects[i] = (OctorokBossEntity*)super->child;
                    }
                }
                obj1 = (FrozenOctorokEntity*)CreateObjectWithParent(super, FROZEN_OCTOROK, 5, 0);
                super->child = (Entity*)obj1;
                if (obj1 != NULL) {
                    obj1->heap = this->heap;
                }
                obj2 = (FrozenOctorokEntity*)CreateObjectWithParent(super, FROZEN_OCTOROK, 6, 0);
                super->parent = (Entity*)obj2;
                if (obj2 != NULL) {
                    obj2->heap = this->heap;
                }
            } else {
                super->spriteOffsetX = 0xd7;
                super->spriteOffsetY = -0x20;
            }
            break;
        case 1:
        case 2:
        case 3:
        case 4:
            super->timer = 0x10;
            this->unk_79 = 0;
            if ((super->type & 2) == 0) {
                super->subtimer = 2;
            } else {
                super->subtimer = 0xfe;
            }
            this->unk_74 = 0x100;
            if ((super->type & 1) == 0) {
                this->unk_76 = 0xff00;
            } else {
                this->unk_76 = 0x100;
            }
            break;
        case 5:
            this->unk_76 = 0x100;
            this->unk_74 = 0x100;
            this->unk_79 = 0x1c;
            this->heap->mouthObject = (OctorokBossEntity*)this;
            break;
        case 7:
            return;
    }
    InitializeAnimation(super, gUnk_08123DDC[super->type * 4]);
    FrozenOctorok_Action1(this);
}

void (*const FrozenOctorok_Action1SubActions[])(FrozenOctorokEntity*) = {
    FrozenOctorok_Action1SubAction0, FrozenOctorok_Action1SubAction1, FrozenOctorok_Action1SubAction2,
    FrozenOctorok_Action1SubAction3, FrozenOctorok_Action1SubAction4, FrozenOctorok_Action1SubAction5,
    FrozenOctorok_Action1SubAction6, FrozenOctorok_Action1SubAction7,
};

const u8 gUnk_08123E18[] = {
    40,
    80,
    176,
    216,
};
const u8 gUnk_08123E1C[] = {
    128,
    0,
    0,
    128,
};

void FrozenOctorok_Action1(FrozenOctorokEntity* this) {
    u32 tmp1;
    u32 tmp2;

    switch (super->type) {
        case 1:
        case 2:
        case 3:
        case 4:
            SortEntityBelow(super->parent, super);
            if (super->parent->subAction == 6) {
                if ((s8)super->subtimer < 0) {
                    super->subtimer = -this->heap->unk_0;
                } else {
                    super->subtimer = this->heap->unk_0;
                }
                sub_0809CBE4(this);
            }
            tmp1 = 0x10000 / (((FrozenOctorokEntity*)super->parent)->unk_76);
            tmp1 = ((tmp1 << 0xd) >> 8);
            tmp1 -= 0x2000;
            if (this->heap->mouthObject->base.health == 1) {
                tmp1 = 0x2200 + tmp1;
            } else {
                tmp1 = (tmp1 >> 1) + 0x2200;
            }
            tmp2 = (u8) - (((FrozenOctorokEntity*)super->parent)->unk_7b + gUnk_08123E18[super->type - 1]);
            sub_0809CB70(this, tmp2, tmp1);
            this->unk_7b =
                ((FrozenOctorokEntity*)super->parent)->unk_7b + gUnk_08123E1C[super->type - 1] + this->unk_79;
            SetAffineInfo(super, this->unk_76, this->unk_74, *(u16*)&this->unk_7a);
            break;
        case 5:
            SortEntityBelow(super->parent, super);
            if ((super->parent->subAction != 4) && (super->health != 1)) {
                if (0x1c < this->unk_79) {
                    this->unk_79--;
                }
                if (this->unk_76 > 0x100) {
                    this->unk_76--;
                } else {
                    this->unk_76 = 0x100;
                }
            }
            tmp1 = (0x10000 / ((FrozenOctorokEntity*)super->parent)->unk_74);
            tmp1 = ((this->unk_79 << 8) * tmp1 >> 8);
            tmp2 = (u8) - (((FrozenOctorokEntity*)super->parent)->unk_7b + 0x80);
            sub_0809CB70(this, tmp2, tmp1);
            this->unk_7b = ((FrozenOctorokEntity*)super->parent)->unk_7b;
            SetAffineInfo(super, this->unk_76, this->unk_74, *(u16*)&this->unk_7a);
            return;
        case 0:
            if (CheckFlags(OUGONTEKI_G)) {
                RequestPriorityDuration(super, 0x1e);
            }
            FrozenOctorok_Action1SubActions[super->subAction](this);
            if (super->subtimer != 0) {
                if ((gRoomTransition.frameCount & 7) == 0) {
                    CreateSparkle(super->child);
                }
                if (this->unk_7e != 0) {
                    super->child->zVelocity = super->child->zVelocity - (s16)this->unk_7e;
                    super->child->z.WORD += super->child->zVelocity;
                    if (((super->child)->zVelocity == 0x3000) || ((super->child)->zVelocity == -0x3000)) {
                        this->unk_7e = -this->unk_7e;
                    }
                }
            }
            SetAffineInfo(super, this->unk_76, this->unk_74, *(u16*)&this->unk_7a);
            break;
        case 6:
            CopyPosition(super->parent, super);
            SetAffineInfo(super, this->unk_76, this->unk_74, *(u16*)&this->unk_7a);
            break;
        case 7:
            if (gRoomControls.camera_target != super) {
                DeleteThisEntity();
            }
            break;
    }
}

void FrozenOctorok_Action1SubAction0(FrozenOctorokEntity* this) {
    Entity* child;
    if (super->subtimer != 0) {
        if (this->unk_7e == 0) {
            child = super->child;
            if (child->z.HALF.HI > -0x10) {
                child->z.WORD -= Q_16_16(0.25);
            } else {
                child->z.WORD -= Q_16_16(0.0625);
                (super->child)->zVelocity = Q_16_16(0.1875);
                this->unk_7e = 0x200;
            }
        }
        if (this->unk_79-- == 0) {
            MessageFromTarget(TEXT_INDEX(TEXT_EZLO, 0x43));
            super->subAction = 1;
            this->unk_79 = 8;
        }
    }
}

void FrozenOctorok_Action1SubAction1(FrozenOctorokEntity* this) {
    Entity* obj;
    if ((gMessage.state & MESSAGE_ACTIVE) == 0) {
        if (this->unk_79-- == 0) {
            obj = CreateObjectWithParent(super, FROZEN_OCTOROK, 7, 0);
            if (obj != NULL) {
                obj->y.HALF.HI -= 0x50;
                gRoomControls.camera_target = obj;
            }
            if (super->subtimer < 3) {
                super->subAction = 2;
                this->unk_79 = 0x1e;
                SoundReq(SFX_THUD_HEAVY);
            } else {
                super->subAction = 3;
                this->unk_79 = 0x78;
            }
        }
    }
}

void FrozenOctorok_Action1SubAction2(FrozenOctorokEntity* this) {
    if (this->unk_79-- == 0) {
        super->subAction = 1;
        this->unk_79 = 0x1e;
        super->subtimer++;
        return;
    }
    switch (this->unk_79 & 3) {
        case 0:
        case 2:
            super->x.HALF.HI = (super->x.HALF.HI & 0xfff0) + 8;
            break;
        case 1:
            super->x.HALF.HI = (super->x.HALF.HI & 0xfff8) + 4;
            break;
        case 3:
            super->x.HALF.HI = (super->x.HALF.HI & 0xfff8) - 4;
            break;
    }
}

void FrozenOctorok_Action1SubAction3(FrozenOctorokEntity* this) {
    if (this->unk_79-- != 0) {
        CreateObjectWithParent(super, OCTOROK_BOSS_OBJECT, 6, 0);
    } else {
        super->subAction = 4;
        this->unk_79 = 0x3c;
        LoadFixedGFX(super, 0x115);
        LoadFixedGFX(super->parent, 0x115);
        ChangeObjPalette(super, 0xef);
        ChangeObjPalette(super->parent, 0xef);
        FrozenOctorok_ChangeObjPaletteOfChildren(this, 0xef);
        SoundReq(SFX_WIND2);
    }
}

void FrozenOctorok_Action1SubAction4(FrozenOctorokEntity* this) {
    u8 bVar1;
    s16 sVar2;
    u8* pbVar3;
    u8* puVar4;

    if (this->unk_79-- == 0) {
        super->subAction = 5;
        this->unk_79 = 0xb4;
        super->type2 = 3;
    } else {
        if ((gRoomTransition.frameCount & 8) != 0) {
            this->heap->mouthObject->unk_76 -= 4;
        } else {
            this->heap->mouthObject->unk_76 += 4;
        }
    }
}

void FrozenOctorok_Action1SubAction5(FrozenOctorokEntity* this) {
    Entity* child;

    if ((gRoomTransition.frameCount & 2) != 0) {
        this->heap->mouthObject->unk_76 -= 8;
    } else {
        this->heap->mouthObject->unk_76 += 8;
    }
    if ((gRoomTransition.frameCount & 3) == 0) {
        CreateObjectWithParent(super, OCTOROK_BOSS_OBJECT, 2, 0);
    }
    if (this->unk_79 == 0) {
        (super->child)->spriteOffsetX = 0;
        LinearMoveAngle(super->child, 0x200, -this->unk_7b);
        if (sub_0806FC80(super, super->child, 0x48) != 0) {
            super->subAction = 6;
            super->speed = 0xc0;
            super->type2 = 0;
            super->subtimer = 0;
            child = super->child;
            child->spriteSettings.draw = 0;
            this->heap->mouthObject->unk_76 = 0x100;
            this->heap->unk_0 = 1;
            SoundReq(SFX_ED);
        }
    } else {
        this->unk_79--;
        switch ((u32)(gRoomTransition.frameCount & 3)) {
            case 0:
            case 2:
                super->child->spriteOffsetX = 0;
                break;
            case 1:
                super->child->spriteOffsetX = 0xfc;
                break;
            case 3:
                super->child->spriteOffsetX = 4;
                break;
        }
    }
}

void FrozenOctorok_Action1SubAction6(FrozenOctorokEntity* this) {
    LinearMoveUpdate(super);
    if ((gRoomControls.origin_y + 0x1c8) < super->y.HALF.HI) {
        gRoomControls.scrollSpeed = 4;
        gRoomControls.camera_target = &gPlayerEntity.base;
        SetLocalFlag(0x9b);
        DeleteEntity(super->parent);
        DeleteEntity(&this->heap->mouthObject->base);
        DeleteEntity(&this->heap->legObjects[0]->base);
        DeleteEntity(&this->heap->legObjects[1]->base);
        DeleteEntity(&this->heap->legObjects[2]->base);
        DeleteEntity(&this->heap->legObjects[3]->base);
        super->subAction = 7;
    }
    if ((gRoomTransition.frameCount & 0xf) == 0) {
        SoundReq(SFX_TOGGLE_DIVING);
    }
}

void FrozenOctorok_Action1SubAction7(FrozenOctorokEntity* this) {
    if ((gRoomControls.scroll_flags & 4) == 0) {
        CreateEzloHint(TEXT_INDEX(TEXT_EZLO, 0x44), 0);
        DeleteThisEntity();
    }
}

void sub_0809CB70(FrozenOctorokEntity* this, s32 angle, s32 radius) {
    s32 tmp;
    tmp = FixedMul(gSineTable[angle], radius);
    tmp = FixedDiv(tmp, 0x100);
    super->x.WORD = (super->parent)->x.WORD + ((tmp << 0x10) >> 8);
    tmp = FixedMul(gSineTable[angle + 0x40], radius);
    tmp = FixedDiv(tmp, 0x100);
    super->y.WORD = super->parent->y.WORD - ((tmp << 0x10) >> 8);
    super->z.WORD = super->parent->z.WORD;
}

void sub_0809CBE4(FrozenOctorokEntity* this) {
    this->unk_79 += super->subtimer;
    if ((s8)super->subtimer < 0) {
        if ((s8)this->unk_79 < (s8)-super->timer) {
            super->subtimer = -super->subtimer;
            SoundReq(SFX_19E);
        }
    } else if ((s8)this->unk_79 > super->timer) {
        super->subtimer = -super->subtimer;
        SoundReq(SFX_19E);
    }
}

void FrozenOctorok_ChangeObjPaletteOfChildren(FrozenOctorokEntity* this, u32 palette) {
    u32 index;

    ChangeObjPalette(&this->heap->mouthObject->base, palette);
    for (index = 0; index < 4; index++) {
        ChangeObjPalette(&this->heap->legObjects[index]->base, palette);
    }
}
