#define NENT_DEPRECATED
#include "entity.h"
#include "enemy.h"
#include "player.h"
#include "screen.h"
#include "functions.h"
#include "object.h"

typedef struct {
    /*0x00*/ u8 filler[0x30];
    /*0x30*/ u8 unk_30[6];
    /*0x36*/ u8 filler_36[0x2];
    /*0x38*/ Entity* ent;
    /*0x3c*/ Entity* entities[5];
    /*0x50*/ Entity* ent2;
} Gleerok_HeapStruct;

typedef struct {
    Entity base;
    u8 filler[0xc];
    u8 unk_74;
    u8 unk_75;
    u8 unk_76;
    u8 unk_77;
    u8 unk_78;
    u8 unk_79;
    u8 unk_7a;
    u8 unk_7b;
    union SplitWord unk_7c;
    u8 unk_80;
    u8 unk_81;
    u8 unk_82;
    u8 unk_83;
    Gleerok_HeapStruct* unk_84;
} GleerokEntity;

extern void (*const Gleerok_Functions[])(Entity*);
extern void (*const gUnk_080CD75C[])(GleerokEntity*);
extern void (*const gUnk_080CD7B8[])(GleerokEntity*);
extern void (*const gUnk_080CD7E4[])(GleerokEntity*);
extern void (*const gUnk_080CD810[])(GleerokEntity*);
extern void (*const gUnk_080CD828[])(GleerokEntity*);
extern void (*const gUnk_080CD848[])(GleerokEntity*);

extern u8 gUnk_080CD774[];
extern u8 gUnk_080CD7C4[];
extern u8 gUnk_080CD884[];
extern u8 gUnk_080CD7F8[];
extern u8 gUnk_080CD840[];
extern u8 gUnk_080CD844[];

extern u32 sub_0806FC80(Entity*, Entity*, s32);

extern void sub_0802E518(GleerokEntity* this);
extern void sub_0802E7E4(Gleerok_HeapStruct* this);
extern void sub_0802E1D0(GleerokEntity* this);
extern u32 sub_0802EB9C(GleerokEntity* this);
extern void sub_0802D86C(GleerokEntity* this);
extern void sub_0802E430(GleerokEntity* this);
extern void sub_0802EBC4(GleerokEntity* this);
extern void sub_0802E9B0(GleerokEntity* this);

extern bool32 sub_0802EB08(Gleerok_HeapStruct* param_1, u32 param_2, u32 param_3);
extern bool32 sub_0802EA18(u16 param_1, u16 param_2, u32 param_3);
extern bool32 sub_0802EA48(Gleerok_HeapStruct* param_1, u32 param_2, u32 param_3, u32 param_4);
extern bool32 sub_0802EA68(Gleerok_HeapStruct* param_1, u32 param_2, u32 param_3, u32 param_4);
extern bool32 sub_0802E7CC(Gleerok_HeapStruct* param_1, u32 param_2, u32 param_3, u32 param_4);
extern bool32 sub_0802EA88(Gleerok_HeapStruct* param_1);
extern bool32 sub_0802E768(Gleerok_HeapStruct* param_1);

void Gleerok(Entity* this) {
    Gleerok_Functions[GetNextFunction(this)](this);
}

void Gleerok_OnDeath(GleerokEntity* this) {
    sub_08078B48();

    switch (super->type) {
        case 2:
            if (super->type2 == 0) {
                super->type2 = 1;
                super->timer = 0;
                super->subtimer = 60;
                this->unk_74 = 0x10;
                this->unk_75 = 0;
                gScreen.controls.alphaBlend = this->unk_74;
                gScreen.controls.layerFXControl = 0x1442;
                SoundReq(SFX_EVAPORATE);
            } else {
                super->timer++;
                if ((super->timer & 0xF) == 0) {
                    this->unk_75++;
                    this->unk_74--;
                    gScreen.controls.alphaBlend = this->unk_74 | (this->unk_75 << 8);
                    if (gScreen.controls.alphaBlend == 0x1000) {
                        sub_0807AABC(&gPlayerEntity);
                        DeleteThisEntity();
                    }
                }

                if (super->subtimer) {
                    if (--super->subtimer == 0) {
                        SoundReq(SFX_APPARATE);
                    }
                }
            }
            break;
        case 1:
            SoundReq(SFX_BOSS_DIE);
            GenericDeath(super);
            break;
        case 0:
            gPlayerState.field_0x14 = 1;

            if (sub_0806FC80(super, &gPlayerEntity, super->frame & 0x3f)) {
                gPlayerState.field_0x3f = 0xfa;
            }

            gUnk_080CD75C[super->action](this);
            sub_0802E518(this);
            sub_0802E7E4(this->unk_84);
            break;
    }
}

void sub_0802D158(GleerokEntity* this) {
    super->action = 1;
    gPauseMenuOptions.disabled = 1;
    SetFade(FADE_IN_OUT | FADE_BLACK_WHITE | FADE_INSTANT, 8);
}

void sub_0802D170(GleerokEntity* this) {
    if (gFadeControl.active)
        return;

    if (super->action == 1) {
        this->unk_84->filler[1] = 0x10;
        this->unk_84->filler[0x19] = 0x10;
        if (sub_0802EB08(this->unk_84, 0x40, 2) == 0 && sub_0802EA88(this->unk_84) == 0) {
            super->action = 2;
            gPlayerEntity.x.HALF.HI = gRoomControls.origin_x + 0x98;
            gPlayerEntity.y.HALF.HI = gRoomControls.origin_y + 0xd8;
            gPlayerEntity.animationState = 0;
            RestorePrevTileEntity(COORD_TO_TILE(&gPlayerEntity), 2);
            gRoomControls.camera_target = super;
            SetFade(FADE_BLACK_WHITE | FADE_INSTANT, 8);
        }
    } else {
        super->action = 3;
        this->unk_80 = 0;
        ((Entity*)this->unk_84)->parent->timer = 24;
        this->unk_84->filler[0x19] = 0;
    }
}

void sub_0802D218(GleerokEntity* this) {
    if (sub_0802EB08(this->unk_84, 0x40, 2))
        return;

    super->action = 4;
    super->timer = 0;
    super->subtimer = 0;
    this->unk_7c.HALF_U.LO = 0xb4;
    ((Entity*)(this->unk_84))->parent->timer = 12;
    CreateObjectWithParent(super, 0x67, 0x2, this->unk_7c.HALF_U.LO);
}

void sub_0802D258(GleerokEntity* this) {
    if (this->unk_7c.HALF_U.LO == 0) {
        sub_0802E1D0(this);
        if (super->type2 == 5) {
            super->action = 5;
            return;
        }
    } else {
        if (--this->unk_7c.HALF_U.LO == 0) {
            InitializeAnimation(super, 0x4e);
        }
    }

    if (super->timer == 0) {
        super->timer = gUnk_080CD774[super->subtimer];
        super->direction = gUnk_080CD774[super->subtimer + 1];
        super->subtimer = (super->subtimer & 0x3f) + 2;
    } else {
        super->timer--;
    }

    if (super->direction <= 1) {
        sub_0802EA48(this->unk_84, 5, 0x40, super->direction);
    } else {
        Gleerok_HeapStruct** tmp = &this->unk_84;
        if (super->direction != 0xff) {
            sub_0802EA68(*tmp, 5, 0x40, super->direction);
        }
    }

    if ((gRoomTransition.frameCount & 0x1f) == 0) {
        SoundReq(SFX_BOSS_DIE);
    }

    if ((gRoomTransition.frameCount & 0xf) == 0) {
        Entity* fx;
        u32 rand = Random() & 5;
        u8* ptr = (u8*)this->unk_84;
        rand *= 4;
        ptr += 0x3c;
        fx = CreateFx(*(Entity**)(ptr + rand), FX_GIANT_EXPLOSION3, 0);
        if (fx) {
            fx->spritePriority.b0 = 0;
        }
    }

    sub_0802E768(this->unk_84);
}

NONMATCH("asm/non_matching/gleerok/sub_0802D33C.inc", void sub_0802D33C(GleerokEntity* this)) {
    u8* unk_84 = (u8*)this->unk_84;
    u8* ptr = unk_84;
    u8* ptr2;
    u32 i = 0;
    ptr += 0x3c;
    ptr2 = ptr;

    do {
        DeleteEntity(*(Entity**)ptr);
        ptr += 4;
    } while (i < 4);

    ptr2 += (i << 2);
    *(u32*)((*(u8**)ptr2) + 0x45) = 0;
    *((*(u8**)ptr2) + 0x6d) |= 1;
    ((Entity*)(*(u8**)(unk_84 + 0x50)))->health = 0;
    ((Entity*)(*(u8**)(unk_84 + 0x50)))->type2 = 0;
    ((Entity*)(*(u8**)(unk_84 + 0x50)))->spriteSettings.draw &= ~1;
    DeleteThisEntity();
}
END_NONMATCH

void Gleerok_OnTick(GleerokEntity* this) {
    gUnk_080CD7B8[super->action](this);
    super->spriteRendering.b3 = 3;
}

NONMATCH("asm/non_matching/gleerok/sub_0802D3B8.inc", void sub_0802D3B8(GleerokEntity* this)) {
    u32 uvar1;
    Entity* ent;
    Gleerok_HeapStruct* heap;
    u32 val;
    u8* ptr;
    u8* ptr2;

    if (CheckGlobalFlag(LV2_CLEAR)) {
        gScreen.lcd.displayControl &= 0xFDFF;
        sub_0807AABC(&gPlayerEntity);
        DeleteThisEntity();
    }

    super->action = 1;

    switch (super->type) {
        case 0:
            super->action = 2;
            COLLISION_OFF(super);
            super->spritePriority.b0 = 7;
            this->unk_75 = 0;
            this->unk_80 = 0;
            this->unk_79 = 0;
            this->unk_7c.WORD = 0x96;

            sub_0802EB9C(this);
            this->unk_84 = zMalloc(0x54);
            heap = this->unk_84;

            if (heap == NULL) {
                GenericDeath(super);
                DeleteThisEntity();
            }

            super->myHeap = this->unk_84;
            uvar1 = 0;

            do {
                ent = CreateEnemy(GLEEROK, 1);
                super->child = ent;
                if (ent != NULL) {
                    ent->type2 = uvar1 + 1;
                    super->child->collisionLayer = super->collisionLayer;
                    super->child->x.HALF.HI = super->x.HALF.HI;
                    super->child->y.HALF.HI = super->y.HALF.HI + ((uvar1 + 1) * 12);
                    super->child->parent = super;
                    ((GleerokEntity*)super->child)->unk_84 = this->unk_84;
                    this->unk_84->entities[uvar1] = super->child;
                    ptr = this->unk_84->filler;
                    ptr2 = ptr + uvar1 * 4;
                    ptr2[1] = 0x10;
                    ptr2[0x19] = 0;
                    ptr[0x35] = 0;
                }
            } while (++uvar1 < 5);

            ent = CreateEnemy(GLEEROK, 2);
            super->child = ent;
            if (ent != NULL) {
                super->child->collisionLayer = super->collisionLayer;
                super->child->x.HALF.HI = super->x.HALF.HI;
                super->child->y.HALF.HI = super->y.HALF.HI + ((uvar1 + 1) * 12);
                super->child->parent = super;
                ((GleerokEntity*)super->child)->unk_84 = this->unk_84;
                heap->ent2 = super->child;
                heap->filler[0x15] = 0x10;
                heap->filler[0x2d] = 0;
                heap->filler[0x35] = 0;
            }
#ifndef EU
            gPlayerState.controlMode = CONTROL_DISABLED;
#endif
            InitializeAnimation(super, 0x4c);
            break;
        case 1:
            if (super->type2 == 1) {
                COLLISION_ON(super);
                super->flags2 |= 0x80;
            }
            ptr = gUnk_080CD7C4;
            ptr += super->type2 * 4;
            super->spritePriority.b0 = *(ptr + 1);
            super->subtimer = 0;
            InitializeAnimation(super, 0x24);
            break;
        case 2:
            super->spritePriority.b0 = 0;
            super->subtimer = 0;
            InitAnimationForceUpdate(super, 0);
            break;
        case 3:
            this->unk_74 = gUnk_080CD884[0];
            this->unk_75 = 0;
            super->spritePriority.b0 = 6;
            super->flags2 |= 0x80;
            CopyPosition(super->parent, super);
            InitializeAnimation(super, 0x4f);
            break;
        case 4:
            InitAnimationForceUpdate(super, 0x2c);
            break;
        case 5:
            super->spritePriority.b0 = 6;
            CopyPosition(super->parent, super);
            InitAnimationForceUpdate(super, 0x2d);
            break;
        case 6:
            super->spritePriority.b0 = 6;
            CopyPosition(super->parent, super);
            InitializeAnimation(super, 0x50);
            break;
    }

    if (super->type) {
        sub_0802D86C(this);
    }
}
END_NONMATCH

void sub_0802D650(GleerokEntity* this) {
#ifdef EU
    sub_08078B48();
#endif

    gUnk_080CD7E4[super->subAction](this);
    sub_0802E7E4(this->unk_84);
}

void sub_0802D674(GleerokEntity* this) {
    u32 val;
    gPauseMenuOptions.disabled = 1;

    if (gPlayerEntity.z.WORD != 0)
        return;
    if (this->unk_7c.WORD == 0x96) {
        SoundReq(SFX_BOSS_HIT);
    }

    val = --this->unk_7c.WORD;
    if (val == -1) {
        super->subAction = 1;
        this->unk_7c.WORD = 0x5a;
        gRoomControls.camera_target = super;
        SoundReq(SFX_BOSS_HIT);
    } else if (val <= 0x3c) {
        if (val == 0x3c) {
            CreateSpeechBubbleExclamationMark(&gPlayerEntity, 0xc, -0x18);
        }
        gPlayerEntity.animationState = 0;
    } else if (val <= 0x59) {
        gPlayerEntity.animationState = 2;
    } else if (val <= 0x77) {
        gPlayerEntity.animationState = 6;
    }
}

void sub_0802D6F0(GleerokEntity* this) {
    if (--this->unk_7c.WORD == -1) {
        super->subAction = 2;
        this->unk_7c.WORD = 0x5a;
        InitScreenShake(150, 0);
    }
}

void sub_0802D714(GleerokEntity* this) {
    Entity* enemy;
    u32 index;
    u32 val1, val2;
    u8* ptr;
    Gleerok_HeapStruct* heap;
    if (--this->unk_7c.WORD != -1)
        return;

    for (heap = this->unk_84, index = 0, val1 = 0, val2 = 0x10, ptr = this->unk_84->filler; index < 6;
         ptr += 4, ++index) {
        *(u16*)(ptr + 0x18) = val1;
        *(ptr + 1) = val2;
    }

    super->subAction = 3;
    super->type2 = 0;
    super->spriteSettings.draw = 1;
    InitializeAnimation(super, 0x4d);
    enemy = CreateEnemy(GLEEROK, 5);
    super->child = enemy;
    if (enemy) {
        enemy->parent = super;
        heap->ent = super->child;
        ((GleerokEntity*)(super->child))->unk_84 = heap;
    }

    heap->ent2->timer = 24;
}

void sub_0802D77C(GleerokEntity* this) {
    if (gRoomTransition.frameCount & 1)
        return;

    sub_0802E430(this);

    if (super->type2 != 2)
        return;

    super->subtimer = 0;
    super->timer = 0;
    super->subAction = 4;
    this->unk_84->ent2->timer = 12;
}

void sub_0802D7B4(GleerokEntity* this) {
    if (super->timer == 0) {
        if (gUnk_080CD7F8[super->subtimer] == 0xff) {
            super->subtimer = 0;
            super->timer = 0;
            super->action = 1;
            super->subAction = 0;
            this->unk_84->ent2->timer = 24;
            gRoomControls.camera_target = &gPlayerEntity;
#ifndef EU
            gPlayerState.controlMode = CONTROL_1;
#endif
            gPauseMenuOptions.disabled = 0;
            SoundReq(BGM_BOSS_THEME);
            return;
        } else {
            super->timer = gUnk_080CD7F8[super->subtimer];
            super->direction = gUnk_080CD7F8[super->subtimer + 1];
            super->subtimer += 2;
            SoundReq(SFX_BOSS_HIT);
        }
    } else {
        super->timer--;
    }

    if (super->direction <= 1) {
        sub_0802EA48(this->unk_84, 5, 0x40, super->direction);
    } else if (super->direction != 0xff) {
        sub_0802EA68(this->unk_84, 5, 0x40, super->direction);
    }

    sub_0802E768(this->unk_84);
    sub_0802E518(this);
}

NONMATCH("asm/non_matching/gleerok/sub_0802D86C.inc", void sub_0802D86C(GleerokEntity* this)) {
    Entity* enemy;
    Entity* enemy2;
    switch (super->type) {
        case 1:
            if (super->type2 == 1) {
                if (((GleerokEntity*)(super->parent))->unk_80 != 0 || super->spriteSettings.draw != 1) {
                    COLLISION_OFF(super);
                } else {
                    COLLISION_ON(super);
                }
            }
        case 2:
            if ((super->spriteSettings.draw & 1) == 0)
                return;

            super->iframes = super->parent->iframes;
            if (super->iframes == 0) {
                if (super->subtimer == 0) {
                    UnloadOBJPalette(super);
                    LoadObjPalette(super, 0xc9);
                } else {
                    super->subtimer--;
                    UnloadOBJPalette(super);
                    LoadObjPalette(super, 0xca);
                }
            }

            if (((GleerokEntity*)(super->parent))->unk_80 == 0)
                return;
            if (!EntityInRectRadius(super, &gPlayerEntity, 8, 8))
                return;

            gPlayerState.field_0x14 = 1;
            gPlayerState.field_0x3f = 0xfc;

            break;
        case 4:
            if (super->frame == 0) {
                UpdateAnimationSingleFrame(super);
                return;
            }

            if (GravityUpdate(super, Q_8_8(24.0)))
                return;

            ((GleerokEntity*)(super->parent))->unk_7b = 1;
            super->timer = 0;

            do {
                CreateObjectWithParent(super, GLEEROK_PARTICLE, 0, super->timer);
            } while (++super->timer < 8);

            SoundReq(SFX_150);
            DeleteThisEntity();
            break;
        case 5:
            if ((gRoomTransition.frameCount & 1) && super->parent->action == 2)
                return;

            UpdateAnimationSingleFrame(super);

            if ((super->frame & ANIM_DONE) == 0)
                return;

            enemy = CreateEnemy(GLEEROK, 6);

            super->child = enemy;
            if (enemy) {
                enemy->parent = super->parent;
                this->unk_84->ent = super->child;
                ((GleerokEntity*)super->child)->unk_84 = this->unk_84;
            }

            DeleteThisEntity();
            break;
        case 6:
            if ((gRoomTransition.frameCount & 1) && super->parent->action == 2)
                return;

            GetNextFrame(super);

            if ((super->frame & ANIM_DONE) == 0)
                return;

            enemy = CreateEnemy(GLEEROK, 3);

            super->child = enemy;
            if (enemy) {
                enemy->parent = super->parent;
                super->timer = this->unk_84->filler[1];
                this->unk_84->ent = super->child;
                ((GleerokEntity*)super->child)->unk_84 = this->unk_84;
            }

            DeleteThisEntity();
            break;
        case 3:
            if (this->unk_74) {
                if (--this->unk_74 == 0) {
                    u32 unk_74;
                    this->unk_75 += 2;
                    unk_74 = gUnk_080CD884[this->unk_75];
                    this->unk_74 = unk_74;

                    if (unk_74) {
                        UnloadOBJPalette(super);
                        LoadObjPalette(super, gUnk_080CD884[this->unk_75 + 1]);
                    }
                }
            }

            if ((super->contactFlags & 0x80) && this->unk_74 == 0) {
                if ((super->contactFlags & 0x7f) == 0x1d) {
                    super->zVelocity = Q_16_16(3.0);
                    super->parent->subAction = 4;
                    super->parent->type2 = 0;
                    ((GleerokEntity*)super->parent)->unk_7b = 0;
                    SoundReq(SFX_BUTTON_PRESS);
                }
            } else {
                if (super->timer != this->unk_84->filler[1]) {
                    if (((super->timer - this->unk_84->filler[1]) & 0x1f) > 0x10) {
                        if (++super->frameIndex >= 0x31) {
                            super->frameIndex = 0x28;
                        }
                    } else {
                        if (--super->frameIndex <= 0x27) {
                            super->frameIndex = 0x30;
                        }
                    }

                    super->timer = this->unk_84->filler[1];
                }
            }

            if (super->zVelocity <= 0)
                return;

            GravityUpdate(super, Q_8_8(24.0));

            if (super->zVelocity > 0)
                return;

            enemy = CreateEnemy(GLEEROK, 4);
            super->child = enemy;
            if (enemy) {
                enemy->parent = super->parent;
                this->unk_84->ent = super->child;
                ((GleerokEntity*)super->child)->unk_84 = this->unk_84;
                // Making super in super->child volatile solves this but ugly
                CopyPosition(super, super->child);
                DeleteThisEntity();
            }

            break;
        case 0:
            gUnk_080CD810[super->subAction](this);
            sub_0802E7E4(this->unk_84);
            break;
    }
}
END_NONMATCH

void sub_0802DB84(GleerokEntity* this) {
    u32 timer;
    super->direction = GetFacingDirection(super, &gPlayerEntity);
    if (this->unk_84->filler[0x1] == super->direction) {
        super->subAction = 1;
        this->unk_78 = 0;
        return;
    }

    if (((this->unk_84->filler[0x1] - super->direction) & 0x1f) > 0x10) {
        timer = 0;
        super->timer &= 0xfe;
    } else {
        timer = 1;
        super->timer = timer;
    }

    switch (this->unk_79) {
        case 0:
            super->speed = 0x30;
            break;
        case 1:
            super->speed = 0x40;
            break;
        case 2:
            super->speed = 0x50;
            break;
    }

    sub_0802EA48(this->unk_84, 5, super->speed, timer);
    sub_0802E768(this->unk_84);
    sub_0802E518(this);
    sub_0802EBC4(this);
}

void sub_0802DC1C(GleerokEntity* this) {
    u32 diff = GetFacingDirection(super, &gPlayerEntity);
    diff = (this->unk_84->filler[1] - diff) & 0x1f;

    if (diff > 0x10) {
        if (diff <= 0x1d) {
            super->subAction = 0;
            this->unk_84->ent2->timer = 0;
            return;
        }
    } else if (diff >= 3) {
        super->subAction = 0;
        this->unk_84->ent2->timer = 0;
        return;
    }
    if (this->unk_78) {
        this->unk_78--;
    } else {
        u8 timer = super->timer;
        diff = 0;
        if (timer == 1) {
            diff = 1;
        }

        sub_0802EA48(this->unk_84, 5, 0x20, diff);
        if (sub_0802EA18(*(u16*)&this->unk_84->filler[0], *(u16*)&this->unk_84->filler[0x14], 4)) {
            if (super->timer == 1) {
                *(u16*)&this->unk_84->filler[0x14] = (((this->unk_84->filler[0x1] - 4) & 0x1f) << 8) | 0xff;
            } else {
                *(u16*)&this->unk_84->filler[0x14] = (((this->unk_84->filler[0x1] + 4) & 0x1f) << 8);
            }

            super->timer ^= 1;
            this->unk_78 = 0xc;
        }
    }

    sub_0802E9B0(this);
    sub_0802E768(this->unk_84);
    sub_0802E518(this);
    sub_0802EBC4(this);
}

void sub_0802DCE0(GleerokEntity* this) {
    if (this->unk_84->ent2->timer != 12) {
        super->direction = GetFacingDirection(super, &gPlayerEntity);
        if (this->unk_84->filler[0x15] == super->direction) {
            this->unk_84->ent2->timer = 12;
            this->unk_82 = 4;
            super->subtimer = 0;
        } else {
            s32 svar1, diff;
            diff = ((this->unk_84->filler[0x15] - super->direction) & 0x1f);
            svar1 = 1;
            if (diff > 0x10) {
                svar1 = 0;
            }

            sub_0802EA48(this->unk_84, 5, 0x20, svar1);
            sub_0802E768(this->unk_84);
        }
    } else {
        if (super->subtimer < 6) {
            if (this->unk_82 == 0) {
                this->unk_82 = 4;
                this->unk_84->entities[super->subtimer]->subtimer = 4;
                super->subtimer++;
            } else {
                this->unk_82--;
            }
        } else {
            if (this->unk_84->ent2->subtimer == 0) {
                super->child = CreateProjectileWithParent(super, GLEEROK_PROJECTILE, 0);

                if (super->child != NULL) {
                    super->child->direction = this->unk_84->filler[0x15];
                    super->child->type2 = this->unk_84->ent2->frame & 0xf;
                    super->child->parent = this->unk_84->ent2;
                    super->child->child = this->unk_84->entities[0];
                }

                this->unk_84->ent2->timer = 0;
                if (this->unk_74 == 0) {
                    this->unk_74 = 1;
                } else {
                    super->subAction = 0;
                    sub_0802EB9C(this);
                }
            }
        }
    }
    sub_0802E518(this);
}

void sub_0802DDD8(GleerokEntity* this) {
    u32 r2, r8, r4;
    u32 rv;
    u32 unk_76 = this->unk_76;
    u32 uvar1 = 4;
    if (unk_76) {
        uvar1 = 6;
        if (this->unk_79 == 2) {
            if ((Random() & 1) == 0) {
                uvar1 = 0xc;
            }
        }
    }

    switch (super->type2) {
        case 0:
            rv = sub_0802EA88(this->unk_84);
            if (rv != 0)
                break;

            super->type2 = 1;
            super->subtimer = 0;

            if ((Random() & 1) == 0) {
                super->direction = 0;
                this->unk_7a = (this->unk_84->filler[1] + uvar1) & 0x1f;
            } else {
                super->direction = 1;
                this->unk_7a = (this->unk_84->filler[1] - uvar1) & 0x1f;
            }

            break;
        case 1:
        case 2:
            if (super->type2 != 1) {
                if (this->unk_76 == 0) {
                    r2 = 1;
                    r8 = 2;
                    r4 = 1;
                } else {
                    r2 = 2;
                    r8 = 6;
                    r4 = 0;
                }

                if (this->unk_84->ent2->subtimer == 1) {
                    super->child = CreateProjectileWithParent(super, GLEEROK_PROJECTILE, r2);
                    if (super->child != NULL) {
                        super->child->direction = this->unk_84->filler[0x15];
                        super->child->type2 = this->unk_84->ent2->frame & 0xf;
                        super->child->parent = this->unk_84->ent2;
                        super->child->child = this->unk_84->entities[0];
                    }
                }

                if (this->unk_74 == 0) {
                    this->unk_74 = r4;
                    this->unk_84->entities[super->subtimer]->subtimer = r8;

                    if (++super->subtimer > 5) {
                        super->subtimer = 0;
                    }
                } else {
                    this->unk_74--;
                }
            }

            if (super->type2 == 1) {
                sub_0802EA48(this->unk_84, 5, 0x40, super->direction);
            } else {
                if (this->unk_76 == 0) {
                    sub_0802EA48(this->unk_84, 5, 0x20, super->direction);
                } else {
                    sub_0802EA48(this->unk_84, 5, 0x10, super->direction);
                }
            }
            sub_0802E768(this->unk_84);

            if (this->unk_7a == this->unk_84->filler[0x15]) {
                if (super->type2 == 1) {
                    super->type2 = 2;
                    super->direction ^= 1;
                    if (super->direction == 1) {
                        this->unk_7a = (this->unk_7a - (uvar1 * 2)) & 0x1f;
                        super->timer = 1;
                    } else {
                        this->unk_7a = (this->unk_7a + (uvar1 * 2)) & 0x1f;
                        super->timer &= 0xfe;
                    }

                    this->unk_84->ent2->timer = 12;
                } else {
                    super->subAction = 0;
                    this->unk_84->ent2->timer = 0;
                    sub_0802EB9C(this);
                }
            }

            break;
    }
    sub_0802E518(this);
}

void sub_0802DFA8(GleerokEntity* this) {
    gUnk_080CD828[super->type2](this);
}

void sub_0802DFC0(GleerokEntity* this) {
    u32 val = this->unk_84->filler[1] & 7;
    if (val) {
        if (val > 4) {
            super->direction = 0;
        } else {
            super->direction = 1;
        }

        sub_0802EA48(this->unk_84, 0, 0x20, super->direction);
        sub_0802EA88(this->unk_84);
    } else {
        if (sub_0802EA88(this->unk_84) == 0) {
            if (this->unk_7b) {
                COLLISION_ON(super);
                super->type2 = 1;
                this->unk_84->ent2->timer = 24;
                SoundReq(SFX_BOSS_HIT);
            }
        }
    }

    sub_0802E518(this);
}

void sub_0802E034(GleerokEntity* this) {
    Gleerok_HeapStruct* heap = this->unk_84;
    u32 val;

    if (super->type2 == 1) {
        super->direction = 2;
        val = 0;
    } else {
        super->direction = 3;
        val = gUnk_080CD840[heap->filler[1] >> 3];
    }

    if (val != heap->filler[0x19]) {
        sub_0802EA68(heap, 0, 0x40, super->direction);
        sub_0802EB08(heap, 0x40, 2);
    } else {
        if (sub_0802EB08(heap, 0x80, 2) == 0) {
            if (super->type2 == 2) {
                this->unk_7c.HALF.LO = 0x168;
                this->unk_80 = 1;
                heap->ent2->timer = 0;
            }

            super->type2++;
            heap->filler[0x19] = 1;
        }
    }

    sub_0802E518(this);
}

void sub_0802E0B8(GleerokEntity* this) {
    u32 val;

    super->y.HALF.HI -= 4;
    sub_0800445C(super);
    super->y.HALF.HI += 4;

    val = super->frame & 0x3f;
    if (val) {
        if (sub_0806FC80(super, &gPlayerEntity, val)) {
            gPlayerState.field_0x14 = 1;
            gPlayerState.field_0x3f = 0xfa;
        }
    }

    if (gUnk_080CD844[this->unk_79 & 0x7f] >= super->health) {
        if (this->unk_79 > 1) {
            super->health = 0;
            super->action = 0;
            sub_08078B48();
            SoundReq(SFX_BOSS_DIE);
            return;
        } else {
            COLLISION_OFF(super);
            this->unk_79++;
            this->unk_79 |= 0x80;
            super->health = 0xff;
            if (this->unk_7c.HALF_U.LO > 0x78) {
                this->unk_7c.HALF.LO = 0x78;
            }
        }
    }

    if ((--this->unk_7c.HALF.LO << 16) == 0xffff0000) {
        COLLISION_OFF(super);
        super->spriteOffsetX = 0;
        super->type2 = 4;
        InitializeAnimation(super, 0x4e);
    } else {
        if (super->contactFlags & 0x80) {
            if (super->iframes > 0) {
                SoundReq(SFX_BOSS_HIT);
            }
        }

        if (this->unk_7c.HALF_U.LO < 0x78) {
            super->spriteOffsetX ^= 1;
        }
    }

    sub_0802E518(this);
}

void sub_0802E1D0(GleerokEntity* this) {
    Gleerok_HeapStruct* heap = this->unk_84;
    if (!(super->frame & ANIM_DONE)) {
        GetNextFrame(super);
    }
    if (super->frame & 0x3f) {
        if (sub_0806FC80(super, &gPlayerEntity, super->frame & 0x3f)) {
            gPlayerState.field_0x14 = 1;
            gPlayerState.field_0x3f = 0xfa;
        }
    }
    if (super->frame & 0x40) {
        u32 i;
        for (i = 0; i < 6; i++) {
            if (heap->unk_30[i]) {
                heap->unk_30[i]--;
                if (heap->unk_30[i] == 0) {
                    CreateFx(heap->entities[0], FX_LAVA_SPLASH, 0);
                    SoundReq(SFX_124);
                    if (i == 5) {
                        if (!(this->unk_79 & 0x80)) {
                            this->unk_7c.HALF_U.LO = 0xF0;
                            InitScreenShake(240, 0);
                        } else {
                            for (this->unk_7c.HALF_U.LO = 0; this->unk_7c.HALF_U.LO < 4; this->unk_7c.HALF_U.LO++) {
                                CreateObjectWithParent(super, GLEEROK_PARTICLE, 1, this->unk_7c.HALF_U.LO);
                            }
                            this->unk_74 = 0;
                            this->unk_75 = 0x10;
                            this->unk_7c.HALF_U.LO = 0xB;
                            gScreen.controls.alphaBlend = this->unk_74 | (this->unk_75 << 8);
                            gScreen.controls.layerFXControl = 0x240;
                            InitScreenShake(30, 0);
                        }
                        super->type2 = 5;
                    }
                }
                break;
            }
        }
    }
    sub_0802E518(this);
}

void sub_0802E300(GleerokEntity* this) {
    u32 dir, tmp;
    u32 index;
    u8* ptr;
    u8* ptr2;
    Entity* ent;
    Gleerok_HeapStruct* heap;
    if ((this->unk_79 & 0x80) == 0) {
        this->unk_7c.HALF.LO--;
    } else {
        if (this->unk_74 != 0x10) {
            if (this->unk_7c.HALF_U.LO) {
                --this->unk_7c.HALF_U.LO;
                if (this->unk_7c.HALF_U.LO == 0) {
                    this->unk_7c.HALF_U.LO = 0xb;
                    this->unk_75--;
                    this->unk_74++;
                    gScreen.controls.alphaBlend = this->unk_74 | (this->unk_75 << 8);
                }
            }
        }
    }

    if (this->unk_7c.HALF_U.LO == 0) {
        if (this->unk_79 & 0x80) {
            if (this->unk_75 != 0x10) {
                this->unk_7c.HALF_U.LO = 0xb;
                this->unk_75++;
                this->unk_74--;
                gScreen.controls.alphaBlend = this->unk_74 | (this->unk_75 << 8);
                return;
            }
        }

        this->unk_79 &= 0x7f;
        heap = this->unk_84;
        dir = sub_0806F5A4(GetFacingDirection(super, &gPlayerEntity)) << 3;
        index = 0;
        ptr2 = &this->unk_80;
        tmp = 0;
        ptr = heap->filler;
        do {
            ((u16*)ptr)[0xc] = tmp;
            ptr[1] = dir;
            ptr += 4;
            index++;
        } while (index <= 5);

        super->subAction = 5;
        super->type2 = 0;
        *ptr2 = 0;
        InitializeAnimation(super, 0x4d);
        ent = CreateEnemy(GLEEROK, 5);
        super->child = ent;
        if (super->child != NULL) {
            super->child->parent = super;
            heap->ent = super->child;
            ((GleerokEntity*)super->child)->unk_84 = heap;
        }

        heap->ent2->timer = 24;
    } else {
        if ((gRoomTransition.frameCount & 0xf) == 0) {
            CreateProjectileWithParent(super, GLEEROK_PROJECTILE, 0x3);
        }
    }

    sub_0802E518(this);
}

void sub_0802E430(GleerokEntity* this) {
    gUnk_080CD848[super->type2](this);
}

void sub_0802E448(GleerokEntity* this) {
    Gleerok_HeapStruct* heap = this->unk_84;
    s32 index;
    for (index = 5; index >= 0; index--) {
        u8* ptr = &heap->filler[0x30];
        if (ptr[index] == 0) {
            CreateFx(heap->entities[0], FX_LAVA_SPLASH, 0);
            SoundReq(SFX_PLY_LAND);
        }

        if (ptr[index] != 10) {
            if (++ptr[index] == 10 && index == 0) {
                super->type2 = 1;
            }
            break;
        }
    }

    if (heap->filler[0x2d] <= 9) {
        sub_0802EA68(heap, 5, 0x40, 3);
    }

    GetNextFrame(super);
    sub_0802E768(this->unk_84);
    sub_0802E518(this);
}

void sub_0802E4C0(GleerokEntity* this) {
    GetNextFrame(super);

    if (super->frame & ANIM_DONE) {
        if (super->action != 2) {
            this->unk_74 = 0;
            this->unk_75 = 8;

            if (this->unk_79) {
                this->unk_76 = 0;
                this->unk_77 = 3;
            }

            sub_0802EBC4(this);
        } else {
            super->type2++;
        }
    }

    sub_0802E518(this);
}

NONMATCH("asm/non_matching/gleerok/sub_0802E518.inc", void sub_0802E518(GleerokEntity* this)) {
    u32 index;
    u32 r6;
    u32 sp4;
    u32 sp8;
    s32 r7;
    Gleerok_HeapStruct* heap = this->unk_84;
    CopyPosition(heap->entities[0]->parent, heap->entities[0]);
    heap->entities[0]->direction = heap->filler[1];

    r6 = heap->filler[1];
    if (r6 > 0x10) {
        r6 ^= 0xf;
        r6 = (r6 + 1) & 0xf;
    }

    if (r6 == 0x10) {
        r6 = 0xf;
    }

    heap->entities[0]->speed = ((r6 ^ 0xf) + 0x12) << 8;
    LinearMoveUpdate(heap->entities[0]);
    sp4 = *(u32*)&heap->filler[0x30];
    sp8 = this->unk_80;

    for (index = 0; index <= 4; index++) {
        s32 result;
        CopyPosition(heap->entities[index], heap->entities[index + 1]);
        result = FixedMul(gSineTable[heap->filler[0x19 + (index + 1) * 4]], ((u8*)sp4)[r6]);
        result = FixedDiv(result, 0x100);
        result = FixedMul(gSineTable[heap->filler[0x1 + (index + 1) * 4]], result);
        result = FixedDiv(result, 0x100);
        heap->entities[index]->x.WORD += result << 8;

        result = FixedMul(gSineTable[heap->filler[0x19 + (index + 1) * 4]], ((u8*)sp4)[r6]);
        result = FixedDiv(result, 0x100);
        heap->entities[index]->y.WORD -= result << 8;
    }

    if (heap->ent2->timer == 24) {
        r7 = (heap->filler[0x15] >> 3) << 2;
        if (heap->filler[0x2d] > 0xc) {
            r7 += 3;
        } else {
            r7 += heap->filler[0x2d] >> 2;
        }

        if (heap->ent2->animIndex != r7 + 0x18) {
            InitAnimationForceUpdate(heap->ent2, r7 + 0x18);
        }
    } else {
        if (this->unk_80 == 0) {
            sub_0802E7CC(heap, 5, 0, 0);
            r7 = (heap->ent2->animationState / 2 + heap->ent2->animationState) / 4;
            r7 += heap->ent2->timer;
        } else {
            if (super->iframes == 0) {
                if ((super->animIndex != (heap->filler[0x15] >> 3) + 0x2f) || (super->frame & ANIM_DONE) != 0) {
                    r7 = (heap->filler[0x15] >> 3) + 0x28;
                }
            } else {
                r7 = (heap->filler[0x15] >> 3) + 0x2f;
            }
        }

        if (heap->ent2->animIndex != r7) {
            InitAnimationForceUpdate(heap->ent2, r7);
        } else {
            UpdateAnimationSingleFrame(heap->ent2);
        }
    }

    for (index = 0; index <= 4; index++) {
        if (this->unk_80 == 0) {
            u32 val;
            sub_0802E7CC(heap, (u8)index, 0, 0);
            r7 = heap->entities[index]->animationState * 12;
            r7 += (((s32)heap->filler[0x19 + (index + 1) * 4]) / 3) * 12;
        } else {
            r7 = heap->filler[0x1 + index * 4] >> 3;
            r7 += 0x48;
        }
        if (heap->entities[index]->animIndex != r7) {
            InitializeAnimation(heap->entities[index], r7);
        }
    }
}
END_NONMATCH
