/**
 * @file octorokBoss.c
 * @ingroup Enemies
 *
 * @brief Octorok boss enemy
 */
#include "enemy/octorokBoss.h"
#include "collision.h"
#include "functions.h"
#include "game.h"
#include "object.h"
#include "projectile.h"

#define IS_FROZEN(this) ((this)->bossPhase & 1)

/*
for TAIL_END object:
this->field_0x7c.BYTES.byte1 tailRadius
*/
#define GET_TAIL_RADIUS(this) this->currentAttack // this->field_0x7c.BYTES.byte1

void OctorokBoss_Hit(OctorokBossEntity*);
void OctorokBoss_Action1(OctorokBossEntity*);
void OctorokBoss_Burning_SubAction1(OctorokBossEntity*);
void sub_080368D8(OctorokBossEntity*);
void sub_08036914(Entity*, s32, s32);
void sub_08036998(OctorokBossEntity*);
void sub_080369D0(OctorokBossEntity*, s32, s32);
void sub_08036AF0(OctorokBossEntity*, s32, s32);
void OctorokBoss_SetAttackTimer(OctorokBossEntity*);
void OctorokBoss_ResetToSubAction0(OctorokBossEntity*);
void OctorokBoss_WaitAnotherTurn(OctorokBossEntity*);
void OctorokBoss_SetWaitTurnsForNextAttack(OctorokBossEntity*);
void OctorokBoss_StartRegularAttack(OctorokBossEntity*);
void OctorokBoss_ChangePalette(OctorokBossEntity*, u32);
void sub_08036F60(OctorokBossEntity*);
void OctorokBoss_StepSound(OctorokBossEntity*, u32);
void sub_08036FE4(OctorokBossEntity*);
void OctorokBoss_OnTick(OctorokBossEntity*);
void OctorokBoss_OnDeath(OctorokBossEntity*);
void OctorokBoss_Hit_SubAction0(OctorokBossEntity*);
void OctorokBoss_Hit_SubAction1(OctorokBossEntity*);
void OctorokBoss_Hit_SubAction2(OctorokBossEntity*);
void OctorokBoss_Hit_SubAction3(OctorokBossEntity*);
void OctorokBoss_Hit_SubAction4(OctorokBossEntity*);
void OctorokBoss_Hit_SubAction5(OctorokBossEntity*);
void OctorokBoss_Hit_SubAction6(OctorokBossEntity*);
void OctorokBoss_Intro_SubAction0(OctorokBossEntity*);
void OctorokBoss_Intro_SubAction1(OctorokBossEntity*);
void OctorokBoss_Intro_SubAction2(OctorokBossEntity*);
void OctorokBoss_Intro_SubAction3(OctorokBossEntity*);
void OctorokBoss_Intro_SubAction4(OctorokBossEntity*);
void OctorokBoss_Intro_SubAction5(OctorokBossEntity*);
void OctorokBoss_Action1_AimTowardsPlayer(OctorokBossEntity*);
void OctorokBoss_Action1_WaitForTurn(OctorokBossEntity*);
void OctorokBoss_Action1_WaitForAttack(OctorokBossEntity*);
void OctorokBoss_Action1_ChargeAttack(OctorokBossEntity*);
void OctorokBoss_Action1_Attack(OctorokBossEntity*);
void OctorokBoss_Init(OctorokBossEntity*);
void OctorokBoss_Action1(OctorokBossEntity*);
void OctorokBoss_Hit(OctorokBossEntity*);
void OctorokBoss_Intro(OctorokBossEntity*);
void OctorokBoss_Burning(OctorokBossEntity*);
void OctorokBoss_Action1_Attack_Type2_0(OctorokBossEntity*);
void OctorokBoss_Action1_Attack_Type2_1(OctorokBossEntity*);
void OctorokBoss_Action1_Attack_Type2_2(OctorokBossEntity*);
void OctorokBoss_Action1_Attack_Type2_3(OctorokBossEntity*);
void OctorokBoss_ExecuteAttackSpitRock(OctorokBossEntity*);
void OctorokBoss_ExecuteAttackVacuum(OctorokBossEntity*);
void OctorokBoss_ExecuteAttackSmoke(OctorokBossEntity*);
void OctorokBoss_ExecuteAttackFreeze(OctorokBossEntity*);
void OctorokBoss_Burning_SubAction0(OctorokBossEntity*);
void OctorokBoss_Burning_SubAction1(OctorokBossEntity*);
void OctorokBoss_Burning_SubAction2(OctorokBossEntity*);

void OctorokBoss(OctorokBossEntity* this) {
    static void (*const OctorokBoss_Functions[])(OctorokBossEntity*) = {
        OctorokBoss_OnTick,
        OctorokBoss_OnTick,
        (void (*)(OctorokBossEntity*))GenericKnockback,
        OctorokBoss_OnDeath,
        (void (*)(OctorokBossEntity*))GenericConfused,
    };
    OctorokBoss_Functions[GetNextFunction(super)](this);
}

void OctorokBoss_OnDeath(OctorokBossEntity* this) {
    if (super->type == WHOLE) {
        super->action = HIT;
        super->subAction = 0;
        super->knockbackDuration = 0;
        super->health = 1;
        sub_080368D8(this);
        OctorokBoss_Hit(this);
    } else {
        DeleteThisEntity();
    }
}

/*
Hit SubActions
0: Start
1-3:
4-
*/
void OctorokBoss_Hit(OctorokBossEntity* this) {
    static void (*const OctorokBoss_Hit_SubActions[])(OctorokBossEntity*) = {
        OctorokBoss_Hit_SubAction0, OctorokBoss_Hit_SubAction1, OctorokBoss_Hit_SubAction2, OctorokBoss_Hit_SubAction3,
        OctorokBoss_Hit_SubAction4, OctorokBoss_Hit_SubAction5, OctorokBoss_Hit_SubAction6,
    };
    if (this->bossPhase == 0) {
        if (super->subAction != 3) {
            gRoomControls.camera_target = &this->heap->tailObjects[0]->base;
            this->heap->field_0x7 = 0x5a;
            PausePlayer();
        }
    } else {
        if (this->heap->field_0x7 != 0) {
            this->heap->field_0x7--;
            PausePlayer();
        }
    }
    OctorokBoss_Hit_SubActions[super->subAction](this);
    if (super->subAction > 3) {
        PausePlayer();
    }
    sub_0800445C(super);
    SetAffineInfo(super, this->unk_76, this->unk_74, this->angle.HWORD);
}

void OctorokBoss_Hit_SubAction0(OctorokBossEntity* this) {
    this->unk_76 = 0xa0;
    this->unk_74 = 0xa0;
    this->heap->fallingStonesTimer = 0;
    if (this->bossPhase == 4) {
        super->subAction = 4;
        gPauseMenuOptions.disabled = 1;
        PausePlayer();
        SoundReq(SFX_BOSS_DIE);
    } else {
        if (IS_FROZEN(this) == FALSE) {
            super->type2 = 0;
            this->timer = 60;
        } else {
            if (this->heap->tailCount > 3) {
                this->heap->tailCount--;
            }
            this->heap->tailObjects[0]->currentAttack = 0;
            this->timer = 120;
        }
        super->subAction = 1;
    }
}

void OctorokBoss_Hit_SubAction1(OctorokBossEntity* this) {
    bool32 frozen = IS_FROZEN(this);
    u16 diffX;
    u16 diffY;

    if (frozen == 0) {
        if (this->heap->tailObjects[0]->currentAttack != 0) {
            this->heap->tailObjects[0]->currentAttack--;
        }
        // Move to the center of the screen before freezing
        diffX = 0x108 + gRoomControls.origin_x - super->x.HALF.HI + 0x4;
        diffY = gRoomControls.origin_y - super->y.HALF.HI + 0x8c;
        if (diffX > 8 || diffY > 8) {
            this->heap->field_0x2 = 1;
#if defined(JP) || defined(DEMO_JP) || defined(EU)
            super->direction =
                ((s32)CalculateDirectionFromOffsets((((gRoomControls.origin_x + 0x108) << 0x10) - super->x.WORD),
                                                    (((gRoomControls.origin_y + 0x88) << 0x10) - super->y.WORD))) >>
                3;
#else
            super->direction = ((s32)CalculateDirectionFromOffsets(gRoomControls.origin_x + 0x108 - super->x.HALF.HI,
                                                                   gRoomControls.origin_y + 0x88 - super->y.HALF.HI)) >>
                               3;
#endif
            super->speed = 0x100;
            ProcessMovement0(super);
        } else {
            // Freeze
            if (super->type2 == 0) {
                CreateObjectWithParent(super, OCTOROK_BOSS_OBJECT, 5, 0);
                CreateObjectWithParent(super, OCTOROK_BOSS_OBJECT, 5, 1);
                CreateObjectWithParent(super, OCTOROK_BOSS_OBJECT, 5, 2);
                CreateObjectWithParent(super, OCTOROK_BOSS_OBJECT, 5, 3);
                CreateObjectWithParent(super, OCTOROK_BOSS_OBJECT, 5, 4);
                super->type2 = 1;
            }
            this->heap->field_0x2 = frozen;
            this->timer--;
        }
    } else {
        u32 i;
        for (i = this->heap->tailCount - 1; i != 0; i--) {
            OctorokBossEntity* tail = this->heap->tailObjects[i - 1];
            tail->base.spriteSettings.draw |= 1;
        }
        if ((gRoomTransition.frameCount & 2) != 0) {
            CreateObjectWithParent(super, OCTOROK_BOSS_OBJECT, 6, 0);
        }
        this->timer--;
    }
    if (this->timer == 0) {
        super->subAction = 2;
        this->bossPhase++;
        UnloadGFXSlots(super);
        if (IS_FROZEN(this) == FALSE) {
            super->hitType = 0x5f;
            LoadFixedGFX(super, 0x108);
            ChangeObjPalette(super, 0xef);
            OctorokBoss_ChangePalette(this, 0xef);
            InitAnimationForceUpdate(&(this->heap->tailObjects[0]->base), 1);
        } else {
            super->hitType = 0x61;
            LoadFixedGFX(super, 0x109);
            ChangeObjPalette(super, 0xf0);
            OctorokBoss_ChangePalette(this, 0xf3);
            InitAnimationForceUpdate(&(this->heap->tailObjects[0]->base), 2);
        }
        CreateObjectWithParent(super, OCTOROK_BOSS_OBJECT, 8, 0);
    }
}

void OctorokBoss_Hit_SubAction2(OctorokBossEntity* this) {
    if (this->heap->tailObjects[0]->currentAttack != 0x80) {
        this->heap->tailObjects[0]->currentAttack++;
    } else {
        super->subAction = 3;
        this->timer = 150;
        gRoomControls.camera_target = &gPlayerEntity.base;
    }
}

void OctorokBoss_Hit_SubAction3(OctorokBossEntity* this) {
    static const u8 OctorokBoss_HealthPerPhase[] = {
        3, 1, 3, 1, 3, 1, 3, 0,
    };
    if (this->timer-- == 0) {
        super->health = OctorokBoss_HealthPerPhase[this->bossPhase];
        COLLISION_ON(super);
        super->action = ACTION1;
        super->subAction = ACTION1_AIMTOWARDSPLAYER;
        this->nextAttackIndex = 0;
        OctorokBoss_SetWaitTurnsForNextAttack(this);
    }
}

void OctorokBoss_Hit_SubAction4(OctorokBossEntity* this) {
    Entity* object;
    super->subAction = 5;
    object = CreateObjectWithParent(super, OCTOROK_BOSS_OBJECT, 9, 0);
    if (object != NULL) {
        gRoomControls.camera_target = object;
    }
}

void OctorokBoss_Hit_SubAction5(OctorokBossEntity* this) {
    super->subAction = 6;
    this->timer = 120;
    this->unk_80 = 0;
    this->angularSpeed.HALF.LO = 0;
}

// Wildly rotating with explosion fx
void OctorokBoss_Hit_SubAction6(OctorokBossEntity* this) {
    s16 tmp;

    this->angle.HALF.HI -= 4;
    this->phase4AttackPattern += 8;
    if ((this->unk_80 & 0x80) != 0) {
        this->unk_80 -= (Random() & 3);
        if ((this->unk_80 & 0x80) == 0) {
            this->unk_80 = 0;
        }
    } else {
        this->unk_80 += (Random() & 3);
        if ((this->unk_80) >= 0x19) {
            this->unk_80 |= 0x80;
        }
    }
    tmp = FixedMul(gSineTable[this->phase4AttackPattern], (this->unk_80 & 0x7f) << 8);
    tmp = FixedDiv(tmp, 0x100);
    super->spriteOffsetX = tmp >> 8;
    tmp = FixedMul(gSineTable[this->phase4AttackPattern + 0x40], (this->unk_80 & 0x7f) * 0x100);
    tmp = FixedDiv(tmp, 0x100);
    super->spriteOffsetY = -((tmp << 0x10) >> 8) >> 0x10;
    if (this->timer == 0) {
        if ((gRoomTransition.frameCount & 0xfU) == 0) {
            // Explosion in the center
            CreateFx(super, FX_GIANT_EXPLOSION3, 0);
            // Explosion at the front right leg
            CreateFx(&this->heap->legObjects[0]->base, FX_GIANT_EXPLOSION3, 0);
        }
        if (++this->angularSpeed.HALF.LO == 0x79) {
            this->heap->mouthObject->base.health = 1;
            SoundReq(SFX_BOSS_DIE);
            // Kill this boss
            GenericDeath(super);
        }
    } else {
        this->timer--;
    }
}

void OctorokBoss_OnTick(OctorokBossEntity* this) {
    static void (*const OctorokBoss_Actions[])(OctorokBossEntity*) = {
        OctorokBoss_Init, OctorokBoss_Action1, OctorokBoss_Hit, OctorokBoss_Intro, OctorokBoss_Burning,
    };

    OctorokBoss_Actions[super->action](this);
    super->spriteRendering.b3 = 3;
}

const u8 gUnk_080CF08C[] = {
    0, 4, 0, 0, 1, 5, 0, 0, 1, 4, 0, 0, 1, 3, 0, 0, 1, 2, 0, 0, 2, 1, 0, 0, 1, 1, 0, 0, 3, 6, 0, 0,
};

void OctorokBoss_Init(OctorokBossEntity* this) {
    u32 leg;
    u32 tail;

    super->action = ACTION1;
    super->spriteSettings.draw = 3;
    switch (super->type) {
        case WHOLE:
            super->spritePriority.b0 = 4;
            this->bossPhase = 0;
            super->timer = 1;
            this->heap = (OctorokBossHeap*)zMalloc(sizeof(OctorokBossHeap));
            if (this->heap == NULL) {
                // Kill this boss
                GenericDeath(super);
                return;
            } else {

                super->myHeap = (u32*)this->heap;
            }
            MEMORY_BARRIER;
            (this->heap)->fallingStonesTimer = 0;
            (this->heap)->unk_0 = 2;
            (this->heap)->field_0x2 = 0;
            (this->heap)->tailCount = 5;
            super->spriteRendering.b0 = 3;
            ((Enemy*)this)->enemyFlags |= EM_FLAG_BOSS;
            this->unk_76 = 0xa0;
            this->unk_74 = 0xa0;
            this->angle.HWORD = 0;
            // Create legs
            for (leg = 0; leg < 4; leg++) {
                super->child = CreateEnemy(OCTOROK_BOSS, leg + 1);
                if (super->child != NULL) {
                    CopyPosition(super, super->child);
                    super->child->parent = super;
                    ((OctorokBossEntity*)super->child)->heap = this->heap;
                    MEMORY_BARRIER;
                    this->heap->legObjects[leg] = ((OctorokBossEntity*)super->child);
                }
            }
            // Create mouth
            super->child = CreateEnemy(OCTOROK_BOSS, MOUTH);
            if (super->child != NULL) {
                CopyPosition(super, super->child);
                super->child->parent = super;
                ((OctorokBossEntity*)super->child)->heap = this->heap;
            }
            // Create tail end
            super->child = CreateEnemy(OCTOROK_BOSS, TAIL_END);
            if (super->child != NULL) {
                CopyPosition(super, super->child);
                super->child->parent = super;
                ((OctorokBossEntity*)super->child)->heap = this->heap;
                MEMORY_BARRIER;
                (this->heap)->tailObjects[0] = (OctorokBossEntity*)super->child;
            }
            // Create tails

            for (tail = 0; tail < 4; tail++) {
                super->child = CreateEnemy(OCTOROK_BOSS, TAIL);
                if (super->child != NULL) {
                    super->child->type2 = tail;
                    CopyPosition(super, super->child);
                    super->child->parent = super;
                    ((OctorokBossEntity*)super->child)->heap = this->heap;
                    MEMORY_BARRIER;
                    this->heap->tailObjects[tail + 1] = (OctorokBossEntity*)super->child;
                }
            }
            super->action = INTRO;
            super->subAction = 0;
            this->timer = 0x3c;
            gPlayerEntity.base.spriteSettings.draw = 0;
            gPlayerEntity.base.x.HALF.HI = super->x.HALF.HI;
            gPlayerEntity.base.y.HALF.HI = super->y.HALF.HI - 0xa0;
            gRoomControls.camera_target = super;
            break;
        case LEG_BR:
        case LEG_FR:
        case LEG_FL:
        case LEG_BL:
            super->timer = 0x10;
            this->timer = 0;
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
        case MOUTH:
            this->unk_76 = 0x100;
            this->unk_74 = 0x100;
            this->timer = 0x1c;
            this->heap->mouthObject = this;
            break;
        case TAIL_END:
            this->unk_76 = 0x100;
            this->unk_74 = 0x100;
            super->spritePriority.b0 = 0;
            this->timer = 0;
            super->timer = 0x10;
            super->subtimer = 1;
            GET_TAIL_RADIUS(this) = 0x80;
            break;
    }
    if (super->type != TAIL_END) {
        InitializeAnimation(super, gUnk_080CF08C[super->type * 4]);
    } else {
        InitAnimationForceUpdate(super, gUnk_080CF08C[super->type * 4]);
    }
    OctorokBoss_Action1(this);
}

void OctorokBoss_Intro(OctorokBossEntity* this) {
    static void (*const OctorokBoss_Intro_SubActions[])(OctorokBossEntity*) = {
        OctorokBoss_Intro_SubAction0, OctorokBoss_Intro_SubAction1, OctorokBoss_Intro_SubAction2,
        OctorokBoss_Intro_SubAction3, OctorokBoss_Intro_SubAction4, OctorokBoss_Intro_SubAction5,
    };
    PausePlayer();
    gPauseMenuOptions.disabled = 1;
    sub_08036F60(this);
    OctorokBoss_Intro_SubActions[super->subAction](this);
    SetAffineInfo(super, this->unk_76, this->unk_74, this->angle.HWORD);
}

void OctorokBoss_Intro_SubAction0(OctorokBossEntity* this) {
    // Wait until the camera is on the Octorok
    if (this->timer-- == 0) {
        super->subAction = 1;
        this->angularSpeed.HWORD = 0x100;
        this->heap->unk_0 = 2;
    }
}

void OctorokBoss_Intro_SubAction1(OctorokBossEntity* this) {
    // Rotate Octorok to player
    if (this->angle.HALF.HI == 0x80) {
        this->timer = 60;
        super->subAction = 2;
        this->heap->unk_0 = 0;
        // Octorok scream
        SoundReq(SFX_159);
    } else {
        this->angle.HWORD += this->angularSpeed.HWORD;
    }
    OctorokBoss_StepSound(this, 0xf);
}

void OctorokBoss_Intro_SubAction2(OctorokBossEntity* this) {
    // Wait for scream end
    if (this->timer-- == 0) {
        super->subAction = 3;
        this->timer = 60;
        gPlayerEntity.base.spriteSettings.draw |= 1;
        gRoomControls.camera_target = &gPlayerEntity.base;
        gRoomControls.scrollSpeed = 1;
    }
}

void OctorokBoss_Intro_SubAction3(OctorokBossEntity* this) {
    // Move the camera to the player
    if (this->timer-- == 0) {
        // Move the player inside the arena
        gPlayerEntity.base.direction = 0x10;
        gPlayerEntity.base.animationState = 4;
        sub_08078AC0(0x1e, 0, 0);
        this->timer = 60;
        super->subAction = 4;
    }
}

void OctorokBoss_Intro_SubAction4(OctorokBossEntity* this) {
    if (this->timer-- == 0) {
        super->subAction = 5;
        this->timer = 45;
        // Make the player look towards the exit
        gPlayerEntity.base.animationState = 0;
    } else {
        // Spawn exclamation bubble at a certain time
        if (this->timer == 0x1e) {
            CreateSpeechBubbleExclamationMark(&gPlayerEntity.base, 0xc, -0x18);
        }
    }
}

void OctorokBoss_Intro_SubAction5(OctorokBossEntity* this) {
    if (gPlayerEntity.base.animationState == 4) {
        if (this->timer++ > 0x1e) {
            // Play boss theme, enable control and switch to main action
            super->action = ACTION1;
            super->subAction = 0;
            gRoomControls.scrollSpeed = gPlayerEntity.base.animationState;
            OctorokBoss_SetAttackTimer(this);
            gPauseMenuOptions.disabled = 0;
            SoundReq(BGM_BOSS_THEME);
        }
    } else {
        if (this->timer-- == 0) {
            // Player looks back towards Octorok
            gPlayerEntity.base.animationState = 4;
        }
    }
}

void OctorokBoss_Action1(OctorokBossEntity* this) {
    static void (*const OctorokBoss_Action1_SubActions[])(OctorokBossEntity*) = {
        OctorokBoss_Action1_AimTowardsPlayer, OctorokBoss_Action1_WaitForTurn, OctorokBoss_Action1_ChargeAttack,
        OctorokBoss_Action1_WaitForAttack,    OctorokBoss_Action1_Attack,
    };
    static const u8 OctorokBoss_LegAngleOffset[] = {
        40,
        80,
        176,
        216,
    };
    static const u8 OctorokBoss_LegAngleOffset2[] = {
        128,
        0,
        0,
        128,
    };
    Entity* object;
    u32 radius;
    u8 angle;

    if (super->type != WHOLE) {
        super->iframes = super->parent->iframes;
    }
    switch (super->type) {
        case LEG_BR:
        case LEG_FR:
        case LEG_FL:
        case LEG_BL:
            if (((Enemy*)super->parent)->enemyFlags & EM_FLAG_BOSS_KILLED) {
                DeleteThisEntity();
            }
            if (this->heap->mouthObject->base.health == 1) {
                if ((s16)this->unk_76 < 0) {
                    this->unk_76 -= 4;
                } else {
                    this->unk_76 += 4;
                }
                if ((s16)this->unk_74 < 0) {
                    this->unk_74 -= 4;
                } else {
                    this->unk_74 += 4;
                }
            }
            SortEntityBelow(super->parent, super);
            if (((this->heap->field_0x2 != 0) || (super->parent->action == INTRO)) ||
                (1 < (u8)(super->parent->subAction - 3))) {
                if ((s8)super->subtimer < 0) {
                    super->subtimer = -this->heap->unk_0;
                } else {
                    super->subtimer = this->heap->unk_0;
                }
                sub_08036998(this);
            }
            radius = 0x10000 / ((OctorokBossEntity*)super->parent)->unk_76;
            radius = radius << 0xd >> 0x8;
            radius = radius - 0x2000;
            if (this->heap->mouthObject->base.health == 1) {
                radius = radius + 0x2200;
            } else {
                radius = (radius >> 1) + 0x2200;
            }
            angle = -(((OctorokBossEntity*)super->parent)->angle.HALF.HI + OctorokBoss_LegAngleOffset[super->type - 1]);
            sub_08036914(super, angle, radius);
            this->angle.HALF.HI = ((OctorokBossEntity*)super->parent)->angle.HALF.HI +
                                  OctorokBoss_LegAngleOffset2[super->type - 1] + this->timer;
            SetAffineInfo(super, this->unk_76, this->unk_74, this->angle.HWORD);
            break;

        case TAIL:
            if (this->heap->mouthObject->base.health < 2) {
                DeleteThisEntity();
            }
            if ((this->heap->tailCount - 2) < super->type2) {
                DeleteThisEntity();
            }
            SortEntityAbove(super->parent, super);
            if (this->heap->tailCount - 2 == super->type2) {
                SortEntityAbove(super->parent, super);
                radius = 0x10000 / ((OctorokBossEntity*)super->parent)->unk_74;
                radius = radius << 0xd >> 0x8;
                angle = -((OctorokBossEntity*)super->parent)->angle.HALF.HI;
                sub_08036914(super, angle, radius);
                this->angle.HALF.HI = -((OctorokBossEntity*)super->parent)->angle.HALF.HI;
            }
            if (!IS_FROZEN((OctorokBossEntity*)super->parent)) {
                super->spriteSettings.draw |= 1;
            }
            break;

        case TAIL_END:
            if (this->heap->mouthObject->base.health < 2) {
                DeleteThisEntity();
            }
            UpdateAnimationSingleFrame(super);
            if (IS_FROZEN((OctorokBossEntity*)super->parent)) {
                sub_08036AF0(this, GET_TAIL_RADIUS(this), 0x10);
                if ((super->contactFlags & 0x7f) == 7) {
                    COLLISION_OFF(super);
                    object = CreateObjectWithParent(super, OCTOROK_BOSS_OBJECT, 0, 0);
                    super->child = object;
                    if (object != NULL) {
                        object->parent = super->parent;
                        ((OctorokBossEntity*)super->child)->heap = this->heap;
                    }
                }
            } else {
                COLLISION_ON(super);
                super->spriteSettings.draw |= 1;
                sub_08036998(this);
                sub_080369D0(this, GET_TAIL_RADIUS(this), 4);
            }
            super->contactFlags = 0;
            SetAffineInfo(super, this->unk_76, this->unk_74, -this->angle.HWORD ^ 0x8000);
            break;

        case MOUTH:
            if (super->health == 1) {
                super->health = 0;
            } else {
                SortEntityBelow(super->parent, super);
                if ((super->parent->subAction != 4) && (super->health != 1)) {
                    if (this->timer > 0x1c) {
                        this->timer--;
                    }
                    if (this->unk_76 > 0x100) {
                        this->unk_76--;
                    } else {
                        this->unk_76 = 0x100;
                    }
                }
                radius = 0x10000 / ((OctorokBossEntity*)super->parent)->unk_74;
                radius = radius * (this->timer << 8) >> 8;
                angle = -(((OctorokBossEntity*)super->parent)->angle.HALF.HI + 0x80);
                sub_08036914(super, angle, radius);

                this->angle.HALF.HI = ((OctorokBossEntity*)super->parent)->angle.HALF.HI;
                SetAffineInfo(super, this->unk_76, this->unk_74, this->angle.HWORD);
                sub_0800445C(super);
            }
            break;

        case WHOLE:
            sub_0800445C(super);
            sub_08036F60(this);
            if (this->heap->fallingStonesTimer != 0) {
                this->heap->fallingStonesTimer--;
                if ((gRoomTransition.frameCount & 3) == 0) {
                    // Falling stones
                    EnemyCreateProjectile(super, OCTOROK_BOSS_PROJECTILE, 3);
                }
            }
            OctorokBoss_Action1_SubActions[super->subAction](this);
            SetAffineInfo(super, this->unk_76, this->unk_74, this->angle.HWORD);
            break;
    }
}

void OctorokBoss_Action1_AimTowardsPlayer(OctorokBossEntity* this) {
    s32 tmp1;
    s32 tmp2;

    tmp1 = (u8)(CalculateDirectionFromOffsets(gPlayerEntity.base.x.WORD - super->x.WORD,
                                              gPlayerEntity.base.y.WORD - super->y.WORD) -
                (((u8)(-this->angle.HALF.HI) ^ 0x80)));
    if (IS_FROZEN(this) == FALSE) {
        tmp2 = 8;
    } else {
        tmp2 = 32;
    }
    // Probably that the boss is aiming at the player?
    if (tmp1 > -tmp2 && tmp1 < tmp2) {
        if (this->phase4AttackPattern != 0xff) {
            OctorokBoss_SetAttackTimer(this);
            return;
        }
        if (this->attackWaitTurns == 0) {
            OctorokBoss_StartRegularAttack(this);
        } else {
            OctorokBoss_WaitAnotherTurn(this); // Resets to subaction1
        }
    } else {
        // Rotate to face the player
        if ((u32)tmp1 > 0x80) {
            this->angle.HWORD += this->angularSpeed.HWORD;
            this->heap->rotation = ROTATION_CW;
        } else {
            this->angle.HWORD -= this->angularSpeed.HWORD;
            this->heap->rotation = ROTATION_CCW;
        }
    }
    super->direction = (u8)(-this->angle.HALF.HI ^ 0x80U) >> 3;
    if (IS_FROZEN(this)) {
        if (this->angularSpeed.HWORD < 0x280) {
            switch (this->bossPhase) {
                case 1:
                    this->angularSpeed.HWORD++;
                    break;
                case 3:
                    this->angularSpeed.HWORD += 2;
                    break;
            }
        }
    }
    OctorokBoss_StepSound(this, 0x1f);
}

void OctorokBoss_Action1_WaitForTurn(OctorokBossEntity* this) {
    if (((this->timer-- == 0) || (this->bossPhase == 0)) || (IS_FROZEN(this))) {
        this->attackWaitTurns--;
        OctorokBoss_ResetToSubAction0(this);
    } else {
        if (ProcessMovement0(super) == 0) {
            this->timer = 0;
        }
    }
    OctorokBoss_StepSound(this, 0x1f);
}

void OctorokBoss_Action1_WaitForAttack(OctorokBossEntity* this) {
    if (this->timer-- == 0) {
        OctorokBoss_SetWaitTurnsForNextAttack(this);
    }
}

// Charge forwards and let stones fall when a collision occurs.
void OctorokBoss_Action1_ChargeAttack(OctorokBossEntity* this) {
    bool32 knockbackCondition;

    if (this->timer == 0) {
        ProcessMovement0(super);
        knockbackCondition = FALSE;
        if ((super->direction != 0) && (super->direction != 0x10)) {
            knockbackCondition = ((super->collisions & (COL_EAST_ANY | COL_WEST_ANY)) != COL_NONE);
        }
        if (((super->direction != 0x18) && (super->direction != 8)) &&
            (super->collisions & (COL_NORTH_ANY | COL_SOUTH_ANY))) {
            knockbackCondition = TRUE;
        }
        if (knockbackCondition) {
            super->knockbackDuration = 0x20;
            super->knockbackSpeed = 0x200;
            super->knockbackDirection = super->direction ^ 0x10;
            this->heap->fallingStonesTimer += 60;
            OctorokBoss_SetAttackTimer(this);
            InitScreenShake(60, 0);
            SoundReq(SFX_158);
            SoundReq(SFX_14C);
        }
    } else {
        this->timer--;
    }
    OctorokBoss_StepSound(this, 0xf);
}

void OctorokBoss_Action1_Attack(OctorokBossEntity* this) {
    static void (*const OctorokBoss_Action1_Attack_Type2s[])(OctorokBossEntity*) = {
        OctorokBoss_Action1_Attack_Type2_0,
        OctorokBoss_Action1_Attack_Type2_1,
        OctorokBoss_Action1_Attack_Type2_2,
        OctorokBoss_Action1_Attack_Type2_3,
    };
    OctorokBoss_Action1_Attack_Type2s[super->type2](this);
    sub_08036FE4(this);

    if (this->unk_80 != 0) {
        gPlayerEntity.base.spriteSettings.draw = 0;
        gPlayerEntity.base.flags &= ~ENT_COLLIDE;
        gPlayerEntity.base.collisionLayer = 2;
        PausePlayer();
        PutAwayItems();
        gPlayerEntity.base.parent = super;
        sub_08036914(&gPlayerEntity.base, (u8) - (this->angle.HALF.HI + 0x80), 0x3800);
    }
}

void OctorokBoss_Action1_Attack_Type2_0(OctorokBossEntity* this) {
    if (this->currentAttack == NO_ATTACK) {
        OctorokBoss_ResetToSubAction0(this);
    } else {
        this->angularSpeed.HWORD = 0x100;
        super->type2 = 1;
        if (IS_FROZEN(this) == FALSE) {
            this->timer = 22;
        } else {
            this->timer = 0;
        }
        SoundReq(SFX_155);
    }
}

void OctorokBoss_Action1_Attack_Type2_1(OctorokBossEntity* this) {
    if (this->unk_74 < 0xc0) {
        this->unk_74++;
    } else {
        if (this->timer-- == 0) {
            if (this->currentAttack == ATTACK_VACUUM) {
                super->type2 = 3;
                if (IS_FROZEN(this)) {
                    this->timer = 60;
                } else {
                    this->timer = 120;
                }
                this->heap->targetAngle = this->angle.HALF.HI;
            } else {
                super->type2 = 2;
                this->timer = 45;
            }
            SoundReq(SFX_155);
        }
    }
}

void OctorokBoss_Action1_Attack_Type2_2(OctorokBossEntity* this) {
    if (this->timer == 0) {
        if (this->unk_76 < this->unk_74) {
            this->unk_74 -= 8;
            return;
        }
        super->type2 = 3;
        this->unk_74 = this->unk_76;
        if (this->currentAttack != ATTACK_SMOKE) {
            this->timer = 60;
        } else {
            this->timer = 0;
            CreateObjectWithParent(super, OCTOROK_BOSS_OBJECT, 4, 0);
        }
    } else {
        this->timer--;
    }
}

void OctorokBoss_Action1_Attack_Type2_3(OctorokBossEntity* this) {
    static void (*const OctorokBoss_AttackFunctions[])(OctorokBossEntity*) = {
        OctorokBoss_ExecuteAttackSpitRock,
        OctorokBoss_ExecuteAttackVacuum,
        OctorokBoss_ExecuteAttackSmoke,
        OctorokBoss_ExecuteAttackFreeze,
    };
    if ((gRoomTransition.frameCount & 2) != 0) {
        this->heap->mouthObject->unk_76 -= 8;
    } else {
        this->heap->mouthObject->unk_76 += 8;
        if (0x180 < this->heap->mouthObject->unk_76) {
            this->heap->mouthObject->unk_76 = 0x180;
        }
    }
    if (this->currentAttack != ATTACK_VACUUM) {
        if (this->heap->mouthObject->timer < 0x20) {
            this->heap->mouthObject->timer++;
            this->heap->mouthObject->unk_76 += 8;
        }
    }
    OctorokBoss_AttackFunctions[this->currentAttack](this);
}

void OctorokBoss_ExecuteAttackSpitRock(OctorokBossEntity* this) {
    super->child = EnemyCreateProjectile(super, OCTOROK_BOSS_PROJECTILE, 0);
    if (super->child != NULL) {
        super->child->parent = super;
        super->child->direction = ((u8) - this->angle.HALF.HI ^ 0x80);
    }
    this->heap->mouthObject->timer++;

    OctorokBoss_SetAttackTimer(this);
}

void OctorokBoss_ExecuteAttackVacuum(OctorokBossEntity* this) {
    s32 tmp;

    if (this->unk_80 == 0) {
        super->direction =

            CalculateDirectionFromOffsets(gPlayerEntity.base.x.WORD - super->x.WORD,
                                          gPlayerEntity.base.y.WORD - super->y.WORD);
        tmp = ((u8) - (this->angle.HALF.HI + 0x80)) - super->direction;
        if (tmp < 0) {
            tmp = -tmp;
        }
        if (tmp < 0x10) {
            if (sub_0806FC80(super, &gPlayerEntity.base, 0xf0) != 0) {
                if ((gPlayerState.flags & PL_FROZEN) == 0) {
                    if ((gPlayerEntity.base.flags & PL_MINISH) != 0) {
                        LinearMoveAngle(&gPlayerEntity.base, 0x280, -this->angle.HALF.HI);
                        if (sub_0806FC80(super, &gPlayerEntity.base, 0x48) != 0) {
                            this->unk_80 = 1;
                            this->timer = 2;
                            this->heap->targetAngle = CalculateDirectionFromOffsets(
                                (gRoomControls.origin_x + 0x108) * 0x10000 - super->x.WORD,
                                (gRoomControls.origin_y + 0x88) * 0x10000 - super->y.WORD);
                            this->heap->targetAngle = (u8) - (this->heap->targetAngle + 0x80);
                            SoundReq(SFX_ED);
                        }
                    }
                } else {
                    gPlayerState.flags &= ~PL_FROZEN;
                }
            }
        }
        if ((gRoomTransition.frameCount & 3) == 0) {
            CreateObjectWithParent(super, OCTOROK_BOSS_OBJECT, 2, 0);
        }
    } else {
        if ((IS_FROZEN(this)) || (this->heap->targetAngle == this->angle.HALF.HI)) {
            if (this->unk_80 == 1) {
                this->unk_80 = 2;
                super->type2 = 2;
                this->timer = 45;
                this->angularSpeed.HWORD = 0x100;
                this->heap->field_0x2 = 0;
                return;
            }
            this->unk_80 = 0;
            this->angularSpeed.HWORD = 0x100;
            this->heap->mouthObject->timer++;
            gPlayerEntity.base.spriteSettings.draw = 1;
            gPlayerEntity.base.flags &= ~ENT_COLLIDE;
            gPlayerEntity.base.collisionLayer = 1;
            sub_080792BC(0x400, (u32)(-(this->angle.HALF.HI + 0x80) * 0x1000000) >> 0x1b, 0x30);
            OctorokBoss_SetAttackTimer(this);
            SoundReq(SFX_EF);
            return;
        }
        this->timer = 2;
    }
    if (this->timer == 0) {
        this->unk_74 = this->unk_76;
        super->type2 = 0;
        OctorokBoss_SetAttackTimer(this);
    } else {
        this->timer--;
        if ((gPlayerState.flags == PL_FROZEN) && (this->timer == 0x3c)) {
            tmp = CalculateDirectionFromOffsets(gPlayerEntity.base.x.WORD - super->x.WORD,
                                                gPlayerEntity.base.y.WORD - super->y.WORD);
            if ((u8)((tmp - ((u8) - this->angle.HALF.HI ^ 0x80))) > 0x80) {
                this->heap->targetAngle = this->angle.HALF.HI + 0x30;
            } else {
                this->heap->targetAngle = this->angle.HALF.HI - 0x30;
            }
        }
        if (IS_FROZEN(this) == FALSE) {
            if (this->heap->targetAngle != this->angle.HALF.HI) {
                this->heap->field_0x2 = 1;
                if ((u8)(this->heap->targetAngle - this->angle.HALF.HI) > 0x80) {
                    this->angle.HWORD -= this->angularSpeed.HWORD;
                } else {
                    this->angle.HWORD += this->angularSpeed.HWORD;
                }
            } else {
                this->heap->field_0x2 = IS_FROZEN(this);
            }
        }
    }
}

void OctorokBoss_ExecuteAttackSmoke(OctorokBossEntity* this) {
    if (this->timer == 0xff) {
        super->type2 = 0;
        OctorokBoss_SetAttackTimer(this);
        this->timer = 120;
    } else {
        this->timer++;
        ChangeLightLevel(-1);
        if ((gRoomTransition.frameCount & 3) == 0) {
            if ((gRoomTransition.frameCount & 7) == 0) {
                SoundReq(SFX_124);
            }
            CreateObjectWithParent(super, OCTOROK_BOSS_OBJECT, 3, 0);
        }
    }
}

void OctorokBoss_ExecuteAttackFreeze(OctorokBossEntity* this) {
    if (this->timer == 0) {
        this->heap->field_0x2 = 0;
        OctorokBoss_SetAttackTimer(this);
    } else {
        this->timer--;
        if ((gRoomTransition.frameCount & 3) == 0) {
            super->child = EnemyCreateProjectile(super, OCTOROK_BOSS_PROJECTILE, 2);
            if (super->child != NULL) {
                super->child->parent = super;
                super->child->direction = (u8) - this->angle.HALF.HI ^ 0x80;
            }
        }
    }
}

void OctorokBoss_Burning(OctorokBossEntity* this) {
    static void (*const OctorokBoss_Burning_SubActions[])(OctorokBossEntity*) = {
        OctorokBoss_Burning_SubAction0,
        OctorokBoss_Burning_SubAction1,
        OctorokBoss_Burning_SubAction2,
    };
    OctorokBoss_Burning_SubActions[super->subAction](this);
    if (this->heap->fallingStonesTimer != 0) {
        this->heap->fallingStonesTimer--;
        if ((gRoomTransition.frameCount & 7) == 0) {
            // Falling stones
            EnemyCreateProjectile(super, OCTOROK_BOSS_PROJECTILE, 3);
        }
    }
    SetAffineInfo(super, this->unk_76, this->unk_74, this->angle.HWORD);
}

void OctorokBoss_Burning_SubAction0(OctorokBossEntity* this) {
    super->subAction = 1;
    super->speed = 0x200;
    super->collisions = COL_NONE;
    super->direction = (u8)(-this->angle.HALF.HI ^ 0x80U) >> 3;
    this->timer = 120;
    this->angularSpeed.HWORD = 0x180;
    this->heap->unk_0 = 4;
    sub_080368D8(this);
    OctorokBoss_Burning_SubAction1(this);
}

void OctorokBoss_Burning_SubAction1(OctorokBossEntity* this) {
    ProcessMovement0(super);
    if (super->collisions != COL_NONE) {
        super->subAction = 2;
        this->heap->targetAngle = this->angle.HALF.HI;
        if ((super->collisions & (COL_EAST_ANY | COL_WEST_ANY)) != COL_NONE) {
            this->heap->targetAngle = -this->heap->targetAngle;
        }
        if ((super->collisions & (COL_NORTH_ANY | COL_SOUTH_ANY)) != COL_NONE) {
            this->heap->targetAngle = -this->heap->targetAngle ^ 0x80;
        }
        super->knockbackDuration = 0x18;
        super->knockbackSpeed = 0x200;
        super->knockbackDirection = super->direction ^ 0x10;
        this->heap->fallingStonesTimer += 30;
        InitScreenShake(30, 0);
        SoundReq(SFX_158);
        SoundReq(SFX_14C);
    }
    if (this->timer-- == 0) {
        super->health = 0;
    }
    if ((gRoomTransition.frameCount & 0x1f) == 0) {
        SoundReq(SFX_159);
    }
}

void OctorokBoss_Burning_SubAction2(OctorokBossEntity* this) {
    if ((u32)(this->heap->targetAngle - this->angle.HALF.HI + 7) < 0xf) {
        super->subAction = 1;
        super->direction = ((u8) - this->angle.HALF.HI ^ 0x80) >> 3;
        super->collisions = COL_NONE;
        ProcessMovement0(super);
    } else {
        if ((u8)(this->heap->targetAngle - this->angle.HALF.HI) > 0x80) {
            this->angle.HWORD -= this->angularSpeed.HWORD;
        } else {
            this->angle.HWORD += this->angularSpeed.HWORD;
        }
    }
}

void sub_080368D8(OctorokBossEntity* this) {
    if (this->unk_80 != 0) {
        gPlayerEntity.base.spriteSettings.draw = 1;
        gPlayerEntity.base.flags |= ENT_COLLIDE;
        gPlayerEntity.base.collisionLayer = 1;
    }
    this->unk_76 = 0xa0;
    this->unk_74 = 0xa0;
}

void sub_08036914(Entity* this, s32 angle, s32 radius) {
    s16 tmp;

    tmp = FixedMul(gSineTable[angle], radius);
    tmp = FixedDiv(tmp, 0x100);
    this->x.WORD = this->parent->x.WORD + ((tmp << 0x10) >> 8);
    tmp = FixedMul(gSineTable[angle + 0x40], radius);
    tmp = FixedDiv(tmp, 0x100);
    this->y.WORD = this->parent->y.WORD - ((tmp << 0x10) >> 8);
    this->spriteOffsetX = this->parent->spriteOffsetX;
    this->spriteOffsetY = this->parent->spriteOffsetY;
}

void sub_08036998(OctorokBossEntity* this) {
    u32 tmp;
    s8* tmp2;
    s32 tmp3;
    s32 a, b;

    tmp2 = &this->timer;
    tmp = super->subtimer + (tmp3 = (u8)*tmp2);
    *tmp2 = tmp;
    tmp3 = super->subtimer;
    if ((s8)tmp3 < 0) {
        a = tmp;
        b = -super->timer;
        if (a << 0x18 < b << 0x18) {
            super->subtimer = -super->subtimer;
        }
    } else {
        if (((s8)*tmp2) > ((s32)super->timer)) {
            super->subtimer = -super->subtimer;
        }
    }
}

/** Calculate tail angles regular */
void sub_080369D0(OctorokBossEntity* this, s32 radius, s32 angleSpeed) {
    u32 index;
    s32 tmp;
    s8 angleDiff;
    OctorokBossHeap* heap = this->heap;
    // Calculate the angle for the tail end
    (heap->tailObjects[0])->angle.HALF.HI = (heap->tailObjects[heap->tailCount - 1])->angle.HALF.HI + this->timer;
    // iterate tails from 0 to tailCount-1 to calculate the angles
    for (index = 0; index < (u8)(heap->tailCount - 1); index++) {
        if ((heap->tailObjects[index])->angle.HALF.HI != (heap->tailObjects[index + 1])->angle.HALF.HI) {
            angleDiff = (heap->tailObjects[index + 1])->angle.HALF.HI - (heap->tailObjects[index])->angle.HALF.HI;
            if (angleDiff >= 1) {
                if (angleDiff > (u8)angleSpeed) {
                    (heap->tailObjects[index + 1])->angle.HALF.HI =
                        (heap->tailObjects[index])->angle.HALF.HI + angleSpeed;
                }
            } else {
                if (angleDiff < (s8)-angleSpeed) {
                    (heap->tailObjects[index + 1])->angle.HALF.HI =
                        (heap->tailObjects[index])->angle.HALF.HI - angleSpeed;
                }
            }
        }
    }
    // iterate tails from tailCount-1 to 0 to calculate the positions
    for (index = heap->tailCount - 1; index != 0; index--) {
        tmp = FixedMul(gSineTable[heap->tailObjects[index - 1]->angle.HALF.HI ^ 0x80], radius << 4);
        tmp = FixedDiv(tmp, 0x100);
        heap->tailObjects[index - 1]->base.x.WORD = heap->tailObjects[index]->base.x.WORD + ((tmp << 0x10) >> 8);
        tmp = FixedMul(gSineTable[(heap->tailObjects[index - 1]->angle.HALF.HI ^ 0x80) + 0x40], radius << 4);
        tmp = FixedDiv(tmp, 0x100);
        heap->tailObjects[index - 1]->base.y.WORD = heap->tailObjects[index]->base.y.WORD - ((tmp << 0x10) >> 8);
    }
}

/** Calculate tail angles frozen sub_08036AF0 */
void sub_08036AF0(OctorokBossEntity* this, s32 radius, s32 angleSpeed) {
    s16 tmp;
    OctorokBossHeap* heap;
    u32 index;
    heap = this->heap;
    for (index = heap->tailCount - 1; index != 0; index--) {
        if (angleSpeed == 0) {
            if (radius >= sub_080041DC(&heap->tailObjects[index]->base, heap->tailObjects[index - 1]->base.x.HALF.HI,
                                       heap->tailObjects[index - 1]->base.y.HALF.HI)) {
                continue;
            } else {
                heap->tailObjects[index - 1]->angle.HALF.HI = CalculateDirectionFromOffsets(
                    heap->tailObjects[index - 1]->base.x.WORD - heap->tailObjects[index]->base.x.WORD,
                    heap->tailObjects[index - 1]->base.y.WORD - heap->tailObjects[index]->base.y.WORD);
                tmp = FixedMul(gSineTable[heap->tailObjects[index - 1]->angle.HALF.HI], radius << 4);
                tmp = FixedDiv(tmp, 0x100);
                heap->tailObjects[index - 1]->base.x.WORD = heap->tailObjects[index]->base.x.WORD + ((s32)tmp << 8);
                tmp = FixedMul(gSineTable[heap->tailObjects[index - 1]->angle.HALF.HI + 0x40], radius << 4);
                heap->tailObjects[index - 1]->base.y.WORD =
                    heap->tailObjects[index]->base.y.WORD - (FixedDiv(tmp, 0x100) << 8);
            }
        } else {
            if (heap->tailObjects[index - 1]->angle.HALF.HI != heap->tailObjects[index]->angle.HALF.HI) {
                if ((s8)(heap->tailObjects[index]->angle.HALF.HI - heap->tailObjects[index - 1]->angle.HALF.HI) >= 1) {
                    if ((s8)(heap->tailObjects[index]->angle.HALF.HI - heap->tailObjects[index - 1]->angle.HALF.HI) >
                        (u8)angleSpeed) {
                        heap->tailObjects[index - 1]->angle.HALF.HI =
                            heap->tailObjects[index]->angle.HALF.HI - angleSpeed;
                    }
                } else {
                    if ((s8)(heap->tailObjects[index]->angle.HALF.HI - heap->tailObjects[index - 1]->angle.HALF.HI) <
                        (s8)-angleSpeed) {
                        heap->tailObjects[index - 1]->angle.HALF.HI =
                            heap->tailObjects[index]->angle.HALF.HI + angleSpeed;
                    }
                }
            }
            tmp = FixedMul(gSineTable[heap->tailObjects[index - 1]->angle.HALF.HI], radius << 4);
            heap->tailObjects[index - 1]->base.x.WORD =
                heap->tailObjects[index]->base.x.WORD + (FixedDiv(tmp, 0x100) << 8);
            tmp = FixedMul(gSineTable[heap->tailObjects[index - 1]->angle.HALF.HI + 0x40], radius << 4);
            heap->tailObjects[index - 1]->base.y.WORD =
                heap->tailObjects[index]->base.y.WORD - (FixedDiv(tmp, 0x100) << 8);
        }
    }
}

void OctorokBoss_SetAttackTimer(OctorokBossEntity* this) {
    // These attack timers are only used if the boss isn't frozen and gRoomVars.field_0xc != 0x100
    static const u8 OctorokBoss_AttackTimerWeights[] = {
        48,
        96,
        80,
        32,
    };
    static const u8 OctorokBoss_AttackTimerValues[] = {
        5,
        10,
        15,
        30,
    };

    // 5: don't attack
    static const u8 OctorokBoss_Phase4AttackPattern0[] = {
        ATTACK_SPITROCK, NO_ATTACK, ATTACK_SPITROCK, ATTACK_SMOKE, END_OF_ATTACK_PATTERN,
    };
    static const u8 OctorokBoss_Phase4AttackPattern1[] = {
        ATTACK_VACUUM, NO_ATTACK, ATTACK_SPITROCK, ATTACK_SMOKE, END_OF_ATTACK_PATTERN,
    };
    static const u8 OctorokBoss_Phase4AttackPattern2[] = {
        ATTACK_SPITROCK, NO_ATTACK, ATTACK_SPITROCK, NO_ATTACK, ATTACK_SPITROCK, END_OF_ATTACK_PATTERN,
    };

    static const u8* const OctorokBoss_Phase4AttackPatterns[] = {
        OctorokBoss_Phase4AttackPattern0,
        OctorokBoss_Phase4AttackPattern1,
        OctorokBoss_Phase4AttackPattern2,
        OctorokBoss_Phase4AttackPattern1,
    };
    const u8* attackPatterns;
    if ((this->bossPhase == 4) && (this->phase4AttackPattern != 0xff)) {
        super->subAction = ACTION1_ATTACK;
        super->type2 = 0;
        this->unk_80 = 0;
        attackPatterns = OctorokBoss_Phase4AttackPatterns[this->phase4AttackPattern];
        this->currentAttack = attackPatterns[this->nextAttackIndex];
        this->nextAttackIndex++;
        if (this->currentAttack != END_OF_ATTACK_PATTERN) {
            return;
        }
        // End of this pattern, choose the next pattern.
        this->phase4AttackPattern = 0xff;
    }
    super->subAction = ACTION1_WAITFORATTACK;
    if (IS_FROZEN(this)) {
        switch (this->bossPhase) {
            case 1:
                this->timer = 30;
                break;
            case 3:
                this->timer = 10;
                break;
        }
    } else {
        if ((s16)gRoomVars.lightLevel != 0x100) {
            // Constantly attack when its dark.
            this->timer = 1;
        } else {
            this->timer = OctorokBoss_AttackTimerValues[GetRandomByWeight(OctorokBoss_AttackTimerWeights)];
        }
    }
}

void OctorokBoss_ResetToSubAction0(OctorokBossEntity* this) {
    this->angularSpeed.HWORD = 0x100;
    this->heap->unk_0 = 2;
    this->heap->rotation = NO_ROTATION;
    super->subAction = ACTION1_AIMTOWARDSPLAYER;
}

void OctorokBoss_WaitAnotherTurn(OctorokBossEntity* this) {
    static const u8 OctorokBoss_TurnTimeWeights[] = {
        48,
        96,
        80,
        32,
    };
    static const u8 OctorokBoss_TurnTimeValues[] = {
        70,
        80,
        90,
        100,
    };
    super->subAction = ACTION1_WAITFORTURN;
    super->speed = 0xc0;
    this->heap->unk_0 = 1;
    this->timer = OctorokBoss_TurnTimeValues[GetRandomByWeight(OctorokBoss_TurnTimeWeights)];
}

void OctorokBoss_SetWaitTurnsForNextAttack(OctorokBossEntity* this) {
    static const u8 OctorokBoss_WaitForAttackTurnsWeights[] = {
        64,
        128,
        64,
    };
    static const u8 OctorokBoss_WaitForAttackTurnsValues[] = {
        1,
        2,
        3,
    };
    this->phase4AttackPattern = 0xff;
    if (IS_FROZEN(this) == FALSE) {
        if ((s16)gRoomVars.lightLevel != 0x100) {
            // Constantly attack when its dark.
            this->attackWaitTurns = IS_FROZEN(this);
        } else {
            this->attackWaitTurns =
                OctorokBoss_WaitForAttackTurnsValues[GetRandomByWeight(OctorokBoss_WaitForAttackTurnsWeights)];
        }
    } else {
        this->attackWaitTurns = 0;
    }
    OctorokBoss_ResetToSubAction0(this);
}

void OctorokBoss_StartRegularAttack(OctorokBossEntity* this) {
    static const u8 OctorokBoss_NormalAttackPatterns[] = {
        ATTACK_VACUUM, ATTACK_SPITROCK, ATTACK_VACUUM, ATTACK_SPITROCK, ATTACK_SPITROCK,
    };
    static const u8 OctorokBoss_FrozenAttackPatterns[] = {
        ATTACK_VACUUM, ATTACK_FREEZE, ATTACK_VACUUM, ATTACK_FREEZE, ATTACK_VACUUM,
    };

    const u8* attackPattern;

    // Set us up for an attack
    super->subAction = ACTION1_ATTACK;
    super->type2 = 0;
    this->phase4AttackPattern = 0xff;
    this->unk_80 = 0;
    this->heap->field_0x2 = 0;
    if (this->bossPhase == 0) {
        // In phase 0 just spit rocks.
        this->currentAttack = ATTACK_SPITROCK;
        return;
    }
    if (this->bossPhase == 4) {
        if (((Random() & 3) == 0) || ((s16)gRoomVars.lightLevel != 0x100)) {
            super->subAction = ACTION1_SUBACTION2;
            super->speed = 0x200;
            this->timer = 60;
            super->collisions = COL_NONE;
            this->heap->unk_0 = 4;
            SoundReq(SFX_159);
            return;
        }
        if (this->bossPhase == 4) {
            // Select a new attack pattern that is not the previous one.
            u32 rand;
            this->nextAttackIndex = 0;
            rand = Random() & 3;
            if (this->heap->phase4PrevAttackPattern != rand) {
                this->phase4AttackPattern = rand;
            } else {
                this->phase4AttackPattern = (this->heap->phase4PrevAttackPattern + 1) & 3;
            }
            this->heap->phase4PrevAttackPattern = this->phase4AttackPattern;
            OctorokBoss_SetAttackTimer(this);
            return;
        }
    }

    if (IS_FROZEN(this) == FALSE) {
        attackPattern = OctorokBoss_NormalAttackPatterns;
    } else {
        attackPattern = OctorokBoss_FrozenAttackPatterns;
    }
    this->currentAttack = attackPattern[this->nextAttackIndex];
    if (++this->nextAttackIndex > 4) {
        this->nextAttackIndex = 0;
    }
}

void OctorokBoss_ChangePalette(OctorokBossEntity* this, u32 paletteIndex) {
    u32 i;

    ChangeObjPalette(&this->heap->mouthObject->base, paletteIndex);

    for (i = 0; i < 4; i++) {
        ChangeObjPalette(&this->heap->legObjects[i]->base, paletteIndex);
    }

    for (i = this->heap->tailCount - 1; i != 0; i--) {
        ChangeObjPalette(&this->heap->tailObjects[i]->base, paletteIndex);
    }
}

void sub_08036F60(OctorokBossEntity* this) {
    if ((super->subAction != 4) && (IS_FROZEN(this) == FALSE)) {
        this->unk_76 += (s8)super->timer;
        this->unk_74 += (s8)super->timer;
        if (this->unk_76 < 0x9c) {
            super->timer = 1;
        } else {
            if (this->unk_76 > 0xa4) {
                super->timer = 255;
            }
        }
    }
}

void OctorokBoss_StepSound(OctorokBossEntity* this, u32 frameMask) {
    if ((gRoomTransition.frameCount & frameMask) == 0) {
        if (IS_FROZEN(this) == FALSE) {
            SoundReq(SFX_TOGGLE_DIVING);
        } else {
            SoundReq(SFX_ICE_BLOCK_SLIDE);
        }
    }
}

void sub_08036FE4(OctorokBossEntity* this) {
    if ((IS_FROZEN(this)) && (this->unk_80 == 0)) {
        if (this->angularSpeed.HWORD != 0) {
            if (this->heap->rotation != NO_ROTATION) {
                if (this->heap->rotation == ROTATION_CW) {
                    this->angle.HWORD += this->angularSpeed.HWORD;
                } else {
                    this->angle.HWORD -= this->angularSpeed.HWORD;
                }
            }
            switch (this->bossPhase) {
                case 1:
                    this->angularSpeed.HWORD--;
                    break;
                case 3:
                    this->angularSpeed.HWORD -= 2;
                    break;
            }
        }
    }
}
