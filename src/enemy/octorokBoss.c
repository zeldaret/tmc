/**
 * @file octorokBoss.c
 * @ingroup Enemies
 *
 * @brief Octorok boss enemy
 */

#include "enemy.h"
#include "functions.h"
#include "object.h"
#include "projectile.h"
#include "game.h"

extern void sub_08078AC0(u32, u32, u32);
extern u32 GetRandomByWeight(const u8*);
extern void sub_080792BC(s32, u32, u32);

enum OctorokRotation { ROTATION_CW, ROTATION_CCW, NO_ROTATION = 0xff };

typedef struct HelperStruct {
    u8 field_0x0; // [0,1,2,4]  is later stored in this->field_0xf
    u8 tailCount;
    u8 field_0x2;               // [0,1]
    u8 targetAngle;             // relates to this->field_0x7a.HALF.HI
    u8 rotation;                // [0,1,0xff]
    u8 phase4PrevAttackPattern; // [0-4], sets this->field_0x80.HALF.HI
    u8 fallingStonesTimer;
    u8 field_0x7; // some sort of counter that is only set when hit for the first time?
    Entity* mouthObject;
    Entity* tailObjects[5];
    Entity* legObjects[4];
} HelperStruct;

static_assert(sizeof(HelperStruct) == 0x30);

/*
this->field_0x7c.BYTES.byte0 Boss Phase
0: unfrozen
1: frozen 1
2: unfrozen
3: frozen 2
4: unfrozen -> death
*/
#define IS_FROZEN(this) ((this)->field_0x7c.BYTES.byte0 & 1)
#define GET_BOSS_PHASE(this) ((this)->field_0x7c.BYTES.byte0)
/*
this->field_0x78.HALF.HI reused timer
*/
#define GET_TIMER(this) ((this)->field_0x78.HALF.HI)
/*
this->field_0x78.HALF.LO turns until the next attack
*/
#define GET_ATTACK_WAIT_TURNS(this) ((this)->field_0x78.HALF.LO)
/*
this->field_0x7a.HALF.HI angle of legs
*/
#define GET_ANGLE(this) ((this)->field_0x7a.HWORD)
#define GET_ANGLE_HI(this) ((this)->field_0x7a.HALF.HI)
/*
this->field_0x82.HWORD angular speed
*/
#define GET_ANGULAR_VEL(this) ((this)->field_0x82.HWORD)

enum OctorokBossPart { WHOLE, LEG_BR, LEG_FR, LEG_FL, LEG_BL, MOUTH, TAIL_END, TAIL };
enum OctorokBossAction {
    INIT,    // 0
    ACTION1, // 1
    HIT,     // 2
    INTRO,   // 3
    BURNING, // 4
};

enum OctorokBossAttack {
    ATTACK_SPITROCK,      // 0
    ATTACK_VACUUM,        // 1
    ATTACK_SMOKE,         // 2
    ATTACK_FREEZE,        // 3
    NO_ATTACK,            // 4
    END_OF_ATTACK_PATTERN // 5
};

enum OctorokBossAction1SubAction {
    ACTION1_AIMTOWARDSPLAYER, // Moving around with step sounds
    ACTION1_WAITFORTURN,      // Also step sounds
    ACTION1_SUBACTION2,       // Step sounds, some kind of attack that is started in OctorokBoss_StartRegularAttack?
    ACTION1_WAITFORATTACK,    // Wait for GET_TIMER(), then OctorokBoss_SetWaitTurnsForNextAttack
    ACTION1_ATTACK,           // Attack
};

/*
this->field_0x7c.BYTES.byte1 currentAttack
*/
#define GET_CURRENT_ATTACK(this) this->field_0x7c.BYTES.byte1
/*
this->field_0x7c.BYTES.byte2 nextAttackIndex
*/
#define GET_NEXT_ATTACK_INDEX(this) this->field_0x7c.BYTES.byte2

/*
for TAIL_END object:
this->field_0x7c.BYTES.byte1 tailRadius
*/
#define GET_TAIL_RADIUS(this) this->field_0x7c.BYTES.byte1

#define GET_HELPER(this) (*(HelperStruct**)&this->cutsceneBeh)

// Which attack pattern is currently used in phase 4
#define GET_PHASE4_ATTACK_PATTERN(this) this->field_0x80.HALF.HI

extern void (*const OctorokBoss_Functions[])(Entity*);
extern void (*const OctorokBoss_Hit_SubActions[])(Entity*);
extern const u8 OctorokBoss_HealthPerPhase[];
extern void (*const OctorokBoss_Actions[])(Entity*);
extern const u8 gUnk_080CF08C[];
extern void (*const OctorokBoss_Intro_SubActions[])(Entity*);
extern void (*const OctorokBoss_Action1_SubActions[])(Entity*);
extern const u8 OctorokBoss_LegAngleOffset[];
extern const u8 OctorokBoss_LegAngleOffset2[];
extern void (*const OctorokBoss_Action1_Attack_Type2s[])(Entity*);
extern void (*const OctorokBoss_AttackFunctions[])(Entity*);
extern void (*const OctorokBoss_Burning_SubActions[])(Entity*);
extern const u8 OctorokBoss_AttackTimerWeights[];
extern const u8 OctorokBoss_AttackTimerValues[];
extern const u8* const OctorokBoss_Phase4AttackPatterns[];
extern const u8 OctorokBoss_TurnTimeWeights[];
extern const u8 OctorokBoss_TurnTimeValues[];
extern const u8 OctorokBoss_WaitForAttackTurnsWeights[];
extern const u8 OctorokBoss_WaitForAttackTurnsValues[];
extern const u8 OctorokBoss_NormalAttackPatterns[];
extern const u8 OctorokBoss_FrozenAttackPatterns[];

void OctorokBoss_Hit(Entity*);
void OctorokBoss_Action1(Entity*);
void OctorokBoss_Burning_SubAction1(Entity*);
void sub_080368D8(Entity*);
void sub_08036914(Entity*, s32, s32);
void sub_08036998(Entity*);
void sub_080369D0(Entity*, s32, s32);
void sub_08036AF0(Entity*, s32, s32);
void OctorokBoss_SetAttackTimer(Entity*);
void OctorokBoss_ResetToSubAction0(Entity*);
void OctorokBoss_WaitAnotherTurn(Entity*);
void OctorokBoss_SetWaitTurnsForNextAttack(Entity*);
void OctorokBoss_StartRegularAttack(Entity*);
void OctorokBoss_ChangePalette(Entity*, u32);
void sub_08036F60(Entity*);
void OctorokBoss_StepSound(Entity*, u32);
void sub_08036FE4(Entity*);

void OctorokBoss(Entity* this) {
    OctorokBoss_Functions[GetNextFunction(this)](this);
}

void OctorokBoss_OnHealthZero(Entity* this) {
    if (this->type == WHOLE) {
        this->action = HIT;
        this->subAction = 0;
        this->knockbackDuration = 0;
        this->health = 1;
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
void OctorokBoss_Hit(Entity* this) {
    if (GET_BOSS_PHASE(this) == 0) {
        if (this->subAction != 3) {
            gRoomControls.camera_target = GET_HELPER(this)->tailObjects[0];
            GET_HELPER(this)->field_0x7 = 0x5a;
            sub_08078B48();
        }
    } else {
        if (GET_HELPER(this)->field_0x7 != 0) {
            GET_HELPER(this)->field_0x7--;
            sub_08078B48();
        }
    }
    OctorokBoss_Hit_SubActions[this->subAction](this);
    if (this->subAction > 3) {
        sub_08078B48();
    }
    sub_0800445C(this);
    sub_0805EC9C(this, this->field_0x76.HWORD, this->field_0x74.HWORD, GET_ANGLE(this));
}

void OctorokBoss_Hit_SubAction0(Entity* this) {
    this->field_0x76.HWORD = 0xa0;
    this->field_0x74.HWORD = 0xa0;
    GET_HELPER(this)->fallingStonesTimer = 0;
    if (GET_BOSS_PHASE(this) == 4) {
        this->subAction = 4;
        gUnk_02034490[0] = 1;
        sub_08078B48();
        SoundReq(SFX_BOSS_DIE);
    } else {
        if (IS_FROZEN(this) == FALSE) {
            this->type2 = 0;
            GET_TIMER(this) = 0x3c;
        } else {
            if (GET_HELPER(this)->tailCount > 3) {
                GET_HELPER(this)->tailCount--;
            }
            GET_HELPER(this)->tailObjects[0]->field_0x7c.BYTES.byte1 = 0;
            GET_TIMER(this) = 0x78;
        }
        this->subAction = 1;
    }
}

void OctorokBoss_Hit_SubAction1(Entity* this) {
    bool32 frozen = IS_FROZEN(this);
    u16 diffX;
    u16 diffY;

    if (frozen == 0) {
        if (GET_HELPER(this)->tailObjects[0]->field_0x7c.BYTES.byte1 != 0) {
            GET_HELPER(this)->tailObjects[0]->field_0x7c.BYTES.byte1--;
        }
        // Move to the center of the screen before freezing
        diffX = 0x108 + gRoomControls.origin_x - this->x.HALF.HI + 0x4;
        diffY = gRoomControls.origin_y - this->y.HALF.HI + 0x8c;
        if (diffX > 8 || diffY > 8) {
            GET_HELPER(this)->field_0x2 = 1;
#if defined(JP) || defined(DEMO_JP) || defined(EU)
            this->direction = ((s32)sub_080045DA((((gRoomControls.origin_x + 0x108) << 0x10) - this->x.WORD),
                                                 (((gRoomControls.origin_y + 0x88) << 0x10) - this->y.WORD))) >>
                              3;
#else
            this->direction = ((s32)sub_080045DA(gRoomControls.origin_x + 0x108 - this->x.HALF.HI,
                                                 gRoomControls.origin_y + 0x88 - this->y.HALF.HI)) >>
                              3;
#endif
            this->speed = 0x100;
            ProcessMovement(this);
        } else {
            // Freeze
            if (this->type2 == 0) {
                CreateObjectWithParent(this, OCTOROK_BOSS_OBJECT, 5, 0);
                CreateObjectWithParent(this, OCTOROK_BOSS_OBJECT, 5, 1);
                CreateObjectWithParent(this, OCTOROK_BOSS_OBJECT, 5, 2);
                CreateObjectWithParent(this, OCTOROK_BOSS_OBJECT, 5, 3);
                CreateObjectWithParent(this, OCTOROK_BOSS_OBJECT, 5, 4);
                this->type2 = 1;
            }
            GET_HELPER(this)->field_0x2 = frozen;
            GET_TIMER(this)--;
        }
    } else {
        u32 i;
        for (i = GET_HELPER(this)->tailCount - 1; i != 0; i--) {
            Entity* tail = GET_HELPER(this)->tailObjects[i - 1];
            tail->spriteSettings.draw |= 1;
        }
        if ((gRoomTransition.frameCount & 2) != 0) {
            CreateObjectWithParent(this, OCTOROK_BOSS_OBJECT, 6, 0);
        }
        GET_TIMER(this)--;
    }
    if (GET_TIMER(this) == 0) {
        this->subAction = 2;
        GET_BOSS_PHASE(this)++;
        sub_080AE068(this);
        if (IS_FROZEN(this) == FALSE) {
            this->hitType = 0x5f;
            LoadFixedGFX(this, 0x108);
            ChangeObjPalette(this, 0xef);
            OctorokBoss_ChangePalette(this, 0xef);
            InitAnimationForceUpdate(GET_HELPER(this)->tailObjects[0], 1);
        } else {
            this->hitType = 0x61;
            LoadFixedGFX(this, 0x109);
            ChangeObjPalette(this, 0xf0);
            OctorokBoss_ChangePalette(this, 0xf3);
            InitAnimationForceUpdate(GET_HELPER(this)->tailObjects[0], 2);
        }
        CreateObjectWithParent(this, OCTOROK_BOSS_OBJECT, 8, 0);
    }
}

void OctorokBoss_Hit_SubAction2(Entity* this) {
    if (GET_HELPER(this)->tailObjects[0]->field_0x7c.BYTES.byte1 != 0x80) {
        GET_HELPER(this)->tailObjects[0]->field_0x7c.BYTES.byte1++;
    } else {
        this->subAction = 3;
        GET_TIMER(this) = 0x96;
        gRoomControls.camera_target = &gPlayerEntity;
    }
}

void OctorokBoss_Hit_SubAction3(Entity* this) {
    if (GET_TIMER(this)-- == 0) {
        this->health = OctorokBoss_HealthPerPhase[GET_BOSS_PHASE(this)];
        COLLISION_ON(this);
        this->action = ACTION1;
        this->subAction = ACTION1_AIMTOWARDSPLAYER;
        GET_NEXT_ATTACK_INDEX(this) = 0;
        OctorokBoss_SetWaitTurnsForNextAttack(this);
    }
}

void OctorokBoss_Hit_SubAction4(Entity* this) {
    Entity* object;
    this->subAction = 5;
    object = CreateObjectWithParent(this, OCTOROK_BOSS_OBJECT, 9, 0);
    if (object != NULL) {
        gRoomControls.camera_target = object;
    }
}

void OctorokBoss_Hit_SubAction5(Entity* this) {
    this->subAction = 6;
    GET_TIMER(this) = 0x78;
    this->field_0x80.HALF.LO = 0;
    this->field_0x82.HALF.LO = 0;
}

// Wildly rotating with explosion fx
void OctorokBoss_Hit_SubAction6(Entity* this) {
    s16 tmp;

    GET_ANGLE_HI(this) -= 4;
    this->field_0x80.HALF.HI += 8;
    if ((this->field_0x80.HALF.LO & 0x80) != 0) {
        this->field_0x80.HALF.LO -= (Random() & 3);
        if ((this->field_0x80.HALF.LO & 0x80) == 0) {
            this->field_0x80.HALF.LO = ((this->field_0x80.HALF.LO & 0x80) << 0x18) >> 0x18;
        }
    } else {
        this->field_0x80.HALF.LO += (Random() & 3);
        if ((this->field_0x80.HALF.LO) >= 0x19) {
            this->field_0x80.HALF.LO |= 0x80;
        }
    }
    tmp = FixedMul(gSineTable[this->field_0x80.HALF.HI], (this->field_0x80.HALF.LO & 0x7f) << 8);
    tmp = FixedDiv(tmp, 0x100);
    this->spriteOffsetX = tmp >> 8;
    tmp = FixedMul(gSineTable[this->field_0x80.HALF.HI + 0x40], (this->field_0x80.HALF.LO & 0x7f) * 0x100);
    tmp = FixedDiv(tmp, 0x100);
    this->spriteOffsetY = -((tmp << 0x10) >> 8) >> 0x10;
    if (GET_TIMER(this) == 0) {
        if ((gRoomTransition.frameCount & 0xfU) == 0) {
            // Explosion in the center
            CreateFx(this, FX_GIANT_EXPLOSION3, 0);
            // Explosion at the front right leg
            CreateFx(GET_HELPER(this)->legObjects[0], FX_GIANT_EXPLOSION3, 0);
        }
        if (++this->field_0x82.HALF.LO == 0x79) {
            GET_HELPER(this)->mouthObject->health = 1;
            SoundReq(SFX_BOSS_DIE);
            // Kill this boss
            sub_0804A7D4(this);
        }
    } else {
        GET_TIMER(this)--;
    }
}

void OctorokBoss_OnTick(Entity* this) {
    OctorokBoss_Actions[this->action](this);
    this->spriteRendering.b3 = 3;
}

ASM_FUNC("asm/non_matching/octorokBoss/OctorokBoss_Init.inc", void OctorokBoss_Init(Entity* this))
/*{

    // TODO where to use GET_HELPER(this) and where to use helper?
    u32 leg;
    u32 nextLeg;
    u32 tail;
    u32 nextTail;
    HelperStruct* helper;

    this->action = ACTION1;
    this->spriteSettings.draw = 3;
    switch (this->type) {
        case WHOLE:
            this->spritePriority.b0 = 4;
            GET_BOSS_PHASE(this) = 0;
            this->actionDelay = 1;
            helper = (HelperStruct*)zMalloc(sizeof(HelperStruct));
            GET_HELPER(this) = helper;
            if (helper == NULL) {
                // Kill this boss
                sub_0804A7D4(this);
                return;
            }
            this->myHeap = (u32*)helper;
            GET_HELPER(this)->fallingStonesTimer = 0;
            helper->field_0x0 = 2;
            helper->field_0x2 = 0;
            helper->tailCount = 5;
            this->spriteRendering.b0 = 3;
            this->field_0x6c.HALF.HI |= 1;
            this->field_0x76.HWORD = 0xa0;
            this->field_0x74.HWORD = 0xa0;
            GET_ANGLE(this) = 0;

            // Create legs
            leg = 0;
            while (leg < 4) {
                this->child = CreateEnemy(OCTOROK_BOSS, leg + 1);
                if (this->child != NULL) {
                    CopyPosition(this, this->child);
                    this->child->parent = this;
                    GET_HELPER(this->child) = helper;
                    helper->legObjects[leg] = this->child;
                }
                leg = leg + 1;
            }

            // Create mouth
            this->child = CreateEnemy(OCTOROK_BOSS, MOUTH);
            if (this->child != NULL) {
                CopyPosition(this, this->child);
                this->child->parent = this;
                GET_HELPER(this->child) = GET_HELPER(this);
            }

            // Create tail end
            this->child = CreateEnemy(OCTOROK_BOSS, TAIL_END);
            if (this->child != NULL) {
                CopyPosition(this, this->child);
                this->child->parent = this;
                GET_HELPER(this->child) = helper;
                GET_HELPER(this)->tailObjects[0] = this->child;
            }

            // Create tails
            tail = 0;
            while (tail < 4) {
                this->child = CreateEnemy(OCTOROK_BOSS, TAIL);
                nextTail = tail + 1;
                if (this->child != NULL) {
                    this->child->type2 = tail;
                    CopyPosition(this, this->child);
                    this->child->parent = this;
                    GET_HELPER(this->child) = helper;
                    helper->tailObjects[tail + 1] = this->child;
                }
                tail = nextTail;
            }

            this->action = INTRO;
            this->subAction = 0;
            GET_TIMER(this) = 0x3c;
            gPlayerEntity.spriteSettings.draw = 0;
            gPlayerEntity.x.HALF.HI = this->x.HALF.HI;
            gPlayerEntity.y.HALF.HI = this->y.HALF.HI - 0xa0;
            gRoomControls.camera_target = this;
            break;

        case LEG_BR:
        case LEG_FR:
        case LEG_FL:
        case LEG_BL:
            this->actionDelay = 0x10;
            GET_TIMER(this) = 0;
            if ((this->type & 2) == 0) {
                this->field_0xf = 2;
            } else {
                this->field_0xf = 0xfe;
            }
            this->field_0x74.HWORD = 0x100;
            if ((this->type & 1) == 0) {
                this->field_0x76.HWORD = 0xff00;
            } else {
                this->field_0x76.HWORD = 0x100;
            }
            break;

        case MOUTH:
            this->field_0x76.HWORD = 0x100;
            this->field_0x74.HWORD = 0x100;
            GET_TIMER(this) = 0x1c;
            GET_HELPER(this)->mouthObject = this;
            break;

        case TAIL_END:
            this->field_0x76.HWORD = 0x100;
            this->field_0x74.HWORD = 0x100;
            this->spritePriority.b0 = 0;
            GET_TIMER(this) = 0;
            this->actionDelay = 0x10;
            this->field_0xf = 1;
            GET_TAIL_RADIUS(this) = 0x80;
            break;
    }
    if (this->type != TAIL_END) {
        InitializeAnimation(this, gUnk_080CF08C[this->type * 4]);
    } else {
        InitAnimationForceUpdate(this, gUnk_080CF08C[this->type * 4]);
    }
    OctorokBoss_Action1(this);
}
*/

void OctorokBoss_Intro(Entity* this) {
    sub_08078B48();
    gUnk_02034490[0] = 1;
    sub_08036F60(this);
    OctorokBoss_Intro_SubActions[this->subAction](this);
    sub_0805EC9C(this, this->field_0x76.HWORD, this->field_0x74.HWORD, GET_ANGLE(this));
}

void OctorokBoss_Intro_SubAction0(Entity* this) {
    // Wait until the camera is on the Octorok
    if (GET_TIMER(this)-- == 0) {
        this->subAction = 1;
        GET_ANGULAR_VEL(this) = 0x100;
        GET_HELPER(this)->field_0x0 = 2;
    }
}

void OctorokBoss_Intro_SubAction1(Entity* this) {
    // Rotate Octorok to player
    if (GET_ANGLE_HI(this) == 0x80) {
        GET_TIMER(this) = 0x3c;
        this->subAction = 2;
        GET_HELPER(this)->field_0x0 = 0;
        // Octorok scream
        SoundReq(SFX_159);
    } else {
        GET_ANGLE(this) += GET_ANGULAR_VEL(this);
    }
    OctorokBoss_StepSound(this, 0xf);
}

void OctorokBoss_Intro_SubAction2(Entity* this) {
    // Wait for scream end
    if (GET_TIMER(this)-- == 0) {
        this->subAction = 3;
        GET_TIMER(this) = 0x3c;
        gPlayerEntity.spriteSettings.draw |= 1;
        gRoomControls.camera_target = &gPlayerEntity;
        gRoomControls.unk5 = 1;
    }
}

void OctorokBoss_Intro_SubAction3(Entity* this) {
    // Move the camera to the player
    if (GET_TIMER(this)-- == 0) {
        // Move the player inside the arena
        gPlayerEntity.direction = 0x10;
        gPlayerEntity.animationState = 4;
        sub_08078AC0(0x1e, 0, 0);
        GET_TIMER(this) = 0x3c;
        this->subAction = 4;
    }
}

void OctorokBoss_Intro_SubAction4(Entity* this) {
    if (GET_TIMER(this)-- == 0) {
        this->subAction = 5;
        GET_TIMER(this) = 0x2d;
        // Make the player look towards the exit
        gPlayerEntity.animationState = 0;
    } else {
        // Spawn exclamation bubble at a certain time
        if (GET_TIMER(this) == 0x1e) {
            CreateSpeechBubbleExclamationMark(&gPlayerEntity, 0xc, -0x18);
        }
    }
}

void OctorokBoss_Intro_SubAction5(Entity* this) {
    if (gPlayerEntity.animationState == 4) {
        if (GET_TIMER(this)++ > 0x1e) {
            // Play boss theme, enable control and switch to main action
            this->action = ACTION1;
            this->subAction = 0;
            gRoomControls.unk5 = gPlayerEntity.animationState;
            OctorokBoss_SetAttackTimer(this);
            gUnk_02034490[0] = 0;
            SoundReq(BGM_BOSS_THEME);
        }
    } else {
        if (GET_TIMER(this)-- == 0) {
            // Player looks back towards Octorok
            gPlayerEntity.animationState = 4;
        }
    }
}

void OctorokBoss_Action1(Entity* this) {
    Entity* object;
    u32 radius;
    u8 angle;

    if (this->type != WHOLE) {
        this->iframes = this->parent->iframes;
    }
    switch (this->type) {
        case LEG_BR:
        case LEG_FR:
        case LEG_FL:
        case LEG_BL:
            if ((this->parent->field_0x6c.HALF.HI & 2) != 0) {
                DeleteThisEntity();
            }
            if (GET_HELPER(this)->mouthObject->health == 1) {
                if ((s16)this->field_0x76.HWORD < 0) {
                    this->field_0x76.HWORD -= 4;
                } else {
                    this->field_0x76.HWORD += 4;
                }
                if ((s16)this->field_0x74.HWORD < 0) {
                    this->field_0x74.HWORD -= 4;
                } else {
                    this->field_0x74.HWORD += 4;
                }
            }
            SortEntityBelow(this->parent, this);
            if (((GET_HELPER(this)->field_0x2 != 0) || (this->parent->action == INTRO)) ||
                (1 < (u8)(this->parent->subAction - 3))) {
                if ((s8)this->field_0xf < 0) {
                    this->field_0xf = -GET_HELPER(this)->field_0x0;
                } else {
                    this->field_0xf = GET_HELPER(this)->field_0x0;
                }
                sub_08036998(this);
            }
            radius = 0x10000 / this->parent->field_0x76.HWORD;
            radius = radius << 0xd >> 0x8;
            radius = radius - 0x2000;
            if (GET_HELPER(this)->mouthObject->health == 1) {
                radius = radius + 0x2200;
            } else {
                radius = (radius >> 1) + 0x2200;
            }
            angle = -(this->parent->field_0x7a.HALF.HI + OctorokBoss_LegAngleOffset[this->type - 1]);
            sub_08036914(this, angle, radius);
            GET_ANGLE_HI(this) =
                this->parent->field_0x7a.HALF.HI + OctorokBoss_LegAngleOffset2[this->type - 1] + GET_TIMER(this);
            sub_0805EC9C(this, this->field_0x76.HWORD, this->field_0x74.HWORD, GET_ANGLE(this));
            break;

        case TAIL:
            if (GET_HELPER(this)->mouthObject->health < 2) {
                DeleteThisEntity();
            }
            if ((GET_HELPER(this)->tailCount - 2) < this->type2) {
                DeleteThisEntity();
            }
            SortEntityAbove(this->parent, this);
            if (GET_HELPER(this)->tailCount - 2 == this->type2) {
                SortEntityAbove(this->parent, this);
                radius = 0x10000 / this->parent->field_0x74.HWORD;
                radius = radius << 0xd >> 0x8;
                angle = -this->parent->field_0x7a.HALF.HI;
                sub_08036914(this, angle, radius);
                GET_ANGLE_HI(this) = -this->parent->field_0x7a.HALF.HI;
            }
            if (IS_FROZEN(this->parent) == 0) {
                this->spriteSettings.draw |= 1;
            }
            break;

        case TAIL_END:
            if (GET_HELPER(this)->mouthObject->health < 2) {
                DeleteThisEntity();
            }
            UpdateAnimationSingleFrame(this);
            if (IS_FROZEN(this->parent)) {
                sub_08036AF0(this, GET_TAIL_RADIUS(this), 0x10);
                if ((this->bitfield & 0x7f) == 7) {
                    COLLISION_OFF(this);
                    object = CreateObjectWithParent(this, OCTOROK_BOSS_OBJECT, 0, 0);
                    this->child = object;
                    if (object != NULL) {
                        object->parent = this->parent;
                        GET_HELPER(this->child) = GET_HELPER(this);
                    }
                }
            } else {
                COLLISION_ON(this);
                this->spriteSettings.draw |= 1;
                sub_08036998(this);
                sub_080369D0(this, GET_TAIL_RADIUS(this), 4);
            }
            this->bitfield = 0;
            sub_0805EC9C(this, this->field_0x76.HWORD, this->field_0x74.HWORD, -GET_ANGLE(this) ^ 0x8000);
            break;

        case MOUTH:
            if (this->health == 1) {
                this->health = 0;
            } else {
                SortEntityBelow(this->parent, this);
                if ((this->parent->subAction != 4) && (this->health != 1)) {
                    if (GET_TIMER(this) > 0x1c) {
                        GET_TIMER(this)--;
                    }
                    if (this->field_0x76.HWORD > 0x100) {
                        this->field_0x76.HWORD--;
                    } else {
                        this->field_0x76.HWORD = 0x100;
                    }
                }
                radius = 0x10000 / this->parent->field_0x74.HWORD;
                radius = radius * (GET_TIMER(this) << 8) >> 8;
                angle = -(this->parent->field_0x7a.HALF.HI + 0x80);
                sub_08036914(this, angle, radius);

                GET_ANGLE_HI(this) = this->parent->field_0x7a.HALF.HI;
                sub_0805EC9C(this, this->field_0x76.HWORD, this->field_0x74.HWORD, GET_ANGLE(this));
                sub_0800445C(this);
            }
            break;

        case WHOLE:
            sub_0800445C(this);
            sub_08036F60(this);
            if (GET_HELPER(this)->fallingStonesTimer != 0) {
                GET_HELPER(this)->fallingStonesTimer--;
                if ((gRoomTransition.frameCount & 3) == 0) {
                    // Falling stones
                    CreateProjectileWithParent(this, OCTOROK_BOSS_PROJECTILE, 3);
                }
            }
            OctorokBoss_Action1_SubActions[this->subAction](this);
            sub_0805EC9C(this, this->field_0x76.HWORD, this->field_0x74.HWORD, GET_ANGLE(this));
            break;
    }
}

void OctorokBoss_Action1_AimTowardsPlayer(Entity* this) {
    s32 tmp1;
    s32 tmp2;

    tmp1 = (u8)(sub_080045DA(gPlayerEntity.x.WORD - this->x.WORD, gPlayerEntity.y.WORD - this->y.WORD) -
                (((u8)(-GET_ANGLE_HI(this)) ^ 0x80)));
    if (IS_FROZEN(this) == FALSE) {
        tmp2 = 8;
    } else {
        tmp2 = 32;
    }
    // Probably that the boss is aiming at the player?
    if (tmp1 > -tmp2 && tmp1 < tmp2) {
        if (GET_PHASE4_ATTACK_PATTERN(this) != 0xff) {
            OctorokBoss_SetAttackTimer(this);
            return;
        }
        if (GET_ATTACK_WAIT_TURNS(this) == 0) {
            OctorokBoss_StartRegularAttack(this);
        } else {
            OctorokBoss_WaitAnotherTurn(this); // Resets to subaction1
        }
    } else {
        // Rotate to face the player
        if ((u32)tmp1 > 0x80) {
            GET_ANGLE(this) += GET_ANGULAR_VEL(this);
            GET_HELPER(this)->rotation = ROTATION_CW;
        } else {
            GET_ANGLE(this) -= GET_ANGULAR_VEL(this);
            GET_HELPER(this)->rotation = ROTATION_CCW;
        }
    }
    this->direction = (u8)(-GET_ANGLE_HI(this) ^ 0x80U) >> 3;
    if (IS_FROZEN(this)) {
        if (GET_ANGULAR_VEL(this) < 0x280) {
            switch (GET_BOSS_PHASE(this)) {
                case 1:
                    GET_ANGULAR_VEL(this)++;
                    break;
                case 3:
                    GET_ANGULAR_VEL(this) += 2;
                    break;
            }
        }
    }
    OctorokBoss_StepSound(this, 0x1f);
}

void OctorokBoss_Action1_WaitForTurn(Entity* this) {
    if (((GET_TIMER(this)-- == 0) || (GET_BOSS_PHASE(this) == 0)) || (IS_FROZEN(this))) {
        GET_ATTACK_WAIT_TURNS(this)--;
        OctorokBoss_ResetToSubAction0(this);
    } else {
        if (ProcessMovement(this) == 0) {
            GET_TIMER(this) = 0;
        }
    }
    OctorokBoss_StepSound(this, 0x1f);
}

void OctorokBoss_Action1_WaitForAttack(Entity* this) {
    if (GET_TIMER(this)-- == 0) {
        OctorokBoss_SetWaitTurnsForNextAttack(this);
    }
}

// Charge forwards and let stones fall when a collision occurs.
void OctorokBoss_Action1_ChargeAttack(Entity* this) {
    bool32 knockbackCondition;

    if (GET_TIMER(this) == 0) {
        ProcessMovement(this);
        knockbackCondition = 0;
        if ((this->direction != 0) && (this->direction != 0x10)) {
            knockbackCondition = BOOLCAST((u32)this->collisions & 0xee00);
        }
        if (((this->direction != 0x18) && (this->direction != 8)) && ((this->collisions & 0xee) != 0)) {
            knockbackCondition = 1;
        }
        if (knockbackCondition != 0) {
            this->knockbackDuration = 0x20;
            this->field_0x46 = 0x200;
            this->knockbackDirection = this->direction ^ 0x10;
            GET_HELPER(this)->fallingStonesTimer += 0x3c;
            OctorokBoss_SetAttackTimer(this);
            InitScreenShake(0x3c, 0);
            SoundReq(SFX_158);
            SoundReq(SFX_14C);
        }
    } else {
        GET_TIMER(this)--;
    }
    OctorokBoss_StepSound(this, 0xf);
}

void OctorokBoss_Action1_Attack(Entity* this) {
    OctorokBoss_Action1_Attack_Type2s[this->type2](this);
    sub_08036FE4(this);

    if (this->field_0x80.HALF.LO != 0) {
        gPlayerEntity.spriteSettings.draw = 0;
        gPlayerEntity.flags &= ~ENT_COLLIDE;
        gPlayerEntity.collisionLayer = 2;
        sub_08078B48();
        sub_08077B20();
        gPlayerEntity.parent = this;
        sub_08036914(&gPlayerEntity, (u8) - (GET_ANGLE_HI(this) + 0x80), 0x3800);
    }
}

void OctorokBoss_Action1_Attack_Type2_0(Entity* this) {
    if (GET_CURRENT_ATTACK(this) == NO_ATTACK) {
        OctorokBoss_ResetToSubAction0(this);
    } else {
        GET_ANGULAR_VEL(this) = 0x100;
        this->type2 = 1;
        if (IS_FROZEN(this) == FALSE) {
            GET_TIMER(this) = 0x16;
        } else {
            GET_TIMER(this) = 0;
        }
        SoundReq(SFX_155);
    }
}

void OctorokBoss_Action1_Attack_Type2_1(Entity* this) {
    if (this->field_0x74.HWORD < 0xc0) {
        this->field_0x74.HWORD++;
    } else {
        if (GET_TIMER(this)-- == 0) {
            if (GET_CURRENT_ATTACK(this) == ATTACK_VACUUM) {
                this->type2 = 3;
                if (IS_FROZEN(this)) {
                    GET_TIMER(this) = 0x3c;
                } else {
                    GET_TIMER(this) = 0x78;
                }
                GET_HELPER(this)->targetAngle = GET_ANGLE_HI(this);
            } else {
                this->type2 = 2;
                GET_TIMER(this) = 0x2d;
            }
            SoundReq(SFX_155);
        }
    }
}

void OctorokBoss_Action1_Attack_Type2_2(Entity* this) {
    if (GET_TIMER(this) == 0) {
        if (this->field_0x76.HWORD < this->field_0x74.HWORD) {
            this->field_0x74.HWORD -= 8;
            return;
        }
        this->type2 = 3;
        this->field_0x74.HWORD = this->field_0x76.HWORD;
        if (GET_CURRENT_ATTACK(this) != ATTACK_SMOKE) {
            GET_TIMER(this) = 0x3c;
        } else {
            GET_TIMER(this) = 0;
            CreateObjectWithParent(this, OCTOROK_BOSS_OBJECT, 4, 0);
        }
    } else {
        GET_TIMER(this)--;
    }
}

void OctorokBoss_Action1_Attack_Type2_3(Entity* this) {
    if ((gRoomTransition.frameCount & 2) != 0) {
        GET_HELPER(this)->mouthObject->field_0x76.HWORD -= 8;
    } else {
        GET_HELPER(this)->mouthObject->field_0x76.HWORD += 8;
        if (0x180 < GET_HELPER(this)->mouthObject->field_0x76.HWORD) {
            GET_HELPER(this)->mouthObject->field_0x76.HWORD = 0x180;
        }
    }
    if (GET_CURRENT_ATTACK(this) != ATTACK_VACUUM) {
        if (GET_HELPER(this)->mouthObject->field_0x78.HALF.HI < 0x20) {
            GET_HELPER(this)->mouthObject->field_0x78.HALF.HI++;
            GET_HELPER(this)->mouthObject->field_0x76.HWORD += 8;
        }
    }
    OctorokBoss_AttackFunctions[GET_CURRENT_ATTACK(this)](this);
}

void OctorokBoss_ExecuteAttackSpitRock(Entity* this) {
    this->child = CreateProjectileWithParent(this, OCTOROK_BOSS_PROJECTILE, 0);
    if (this->child != NULL) {
        this->child->parent = this;
        this->child->direction = ((u8)-GET_ANGLE_HI(this) ^ 0x80);
    }
    GET_HELPER(this)->mouthObject->field_0x78.HALF.HI++;

    OctorokBoss_SetAttackTimer(this);
}

void OctorokBoss_ExecuteAttackVacuum(Entity* this) {
    s32 tmp;

    if (this->field_0x80.HALF.LO == 0) {
        this->direction = sub_080045DA(gPlayerEntity.x.WORD - this->x.WORD, gPlayerEntity.y.WORD - this->y.WORD);
        tmp = ((u8) - (GET_ANGLE_HI(this) + 0x80)) - this->direction;
        if (tmp < 0) {
            tmp = -tmp;
        }
        if (tmp < 0x10) {
            if (sub_0806FC80(this, &gPlayerEntity, 0xf0) != 0) {
                if ((gPlayerState.flags & PL_FROZEN) == 0) {
                    if ((gPlayerEntity.flags & PL_MINISH) != 0) {
                        LinearMoveAngle(&gPlayerEntity, 0x280, -GET_ANGLE_HI(this));
                        if (sub_0806FC80(this, &gPlayerEntity, 0x48) != 0) {
                            this->field_0x80.HALF.LO = 1;
                            GET_TIMER(this) = 2;
                            GET_HELPER(this)->targetAngle =
                                sub_080045DA((gRoomControls.origin_x + 0x108) * 0x10000 - this->x.WORD,
                                             (gRoomControls.origin_y + 0x88) * 0x10000 - this->y.WORD);
                            GET_HELPER(this)->targetAngle = (u8) - (GET_HELPER(this)->targetAngle + 0x80);
                            SoundReq(SFX_ED);
                        }
                    }
                } else {
                    gPlayerState.flags &= ~PL_FROZEN;
                }
            }
        }
        if ((gRoomTransition.frameCount & 3) == 0) {
            CreateObjectWithParent(this, OCTOROK_BOSS_OBJECT, 2, 0);
        }
    } else {
        if ((IS_FROZEN(this)) || (GET_HELPER(this)->targetAngle == GET_ANGLE_HI(this))) {
            if (this->field_0x80.HALF.LO == 1) {
                this->field_0x80.HALF.LO = 2;
                this->type2 = 2;
                GET_TIMER(this) = 0x2d;
                GET_ANGULAR_VEL(this) = 0x100;
                GET_HELPER(this)->field_0x2 = 0;
                return;
            }
            this->field_0x80.HALF.LO = 0;
            GET_ANGULAR_VEL(this) = 0x100;
            GET_HELPER(this)->mouthObject->field_0x78.HALF.HI++;
            gPlayerEntity.spriteSettings.draw = 1;
            gPlayerEntity.flags &= ~ENT_COLLIDE;
            gPlayerEntity.collisionLayer = 1;
            sub_080792BC(0x400, (u32)(-(GET_ANGLE_HI(this) + 0x80) * 0x1000000) >> 0x1b, 0x30);
            OctorokBoss_SetAttackTimer(this);
            SoundReq(SFX_EF);
            return;
        }
        GET_TIMER(this) = 2;
    }
    if (GET_TIMER(this) == 0) {
        this->field_0x74.HWORD = this->field_0x76.HWORD;
        this->type2 = 0;
        OctorokBoss_SetAttackTimer(this);
    } else {
        GET_TIMER(this)--;
        if ((gPlayerState.flags == PL_FROZEN) && (GET_TIMER(this) == 0x3c)) {
            tmp = sub_080045DA(gPlayerEntity.x.WORD - this->x.WORD, gPlayerEntity.y.WORD - this->y.WORD);
            if ((u8)((tmp - ((u8)-GET_ANGLE_HI(this) ^ 0x80))) > 0x80) {
                GET_HELPER(this)->targetAngle = GET_ANGLE_HI(this) + 0x30;
            } else {
                GET_HELPER(this)->targetAngle = GET_ANGLE_HI(this) - 0x30;
            }
        }
        if (IS_FROZEN(this) == FALSE) {
            if (GET_HELPER(this)->targetAngle != GET_ANGLE_HI(this)) {
                GET_HELPER(this)->field_0x2 = 1;
                if ((u8)(GET_HELPER(this)->targetAngle - GET_ANGLE_HI(this)) > 0x80) {
                    GET_ANGLE(this) -= GET_ANGULAR_VEL(this);
                } else {
                    GET_ANGLE(this) += GET_ANGULAR_VEL(this);
                }
            } else {
                GET_HELPER(this)->field_0x2 = IS_FROZEN(this);
            }
        }
    }
}

void OctorokBoss_ExecuteAttackSmoke(Entity* this) {
    if (GET_TIMER(this) == 0xff) {
        this->type2 = 0;
        OctorokBoss_SetAttackTimer(this);
        GET_TIMER(this) = 0x78;
    } else {
        GET_TIMER(this)++;
        ChangeLightLevel(-1);
        if ((gRoomTransition.frameCount & 3) == 0) {
            if ((gRoomTransition.frameCount & 7) == 0) {
                SoundReq(SFX_124);
            }
            CreateObjectWithParent(this, OCTOROK_BOSS_OBJECT, 3, 0);
        }
    }
}

void OctorokBoss_ExecuteAttackFreeze(Entity* this) {
    if (GET_TIMER(this) == 0) {
        GET_HELPER(this)->field_0x2 = 0;
        OctorokBoss_SetAttackTimer(this);
    } else {
        GET_TIMER(this)--;
        if ((gRoomTransition.frameCount & 3) == 0) {
            this->child = CreateProjectileWithParent(this, OCTOROK_BOSS_PROJECTILE, 2);
            if (this->child != NULL) {
                this->child->parent = this;
                this->child->direction = (u8)-GET_ANGLE_HI(this) ^ 0x80;
            }
        }
    }
}

void OctorokBoss_Burning(Entity* this) {
    OctorokBoss_Burning_SubActions[this->subAction](this);
    if (GET_HELPER(this)->fallingStonesTimer != 0) {
        GET_HELPER(this)->fallingStonesTimer--;
        if ((gRoomTransition.frameCount & 7) == 0) {
            // Falling stones
            CreateProjectileWithParent(this, OCTOROK_BOSS_PROJECTILE, 3);
        }
    }
    sub_0805EC9C(this, this->field_0x76.HWORD, this->field_0x74.HWORD, GET_ANGLE(this));
}

void OctorokBoss_Burning_SubAction0(Entity* this) {
    this->subAction = 1;
    this->speed = 0x200;
    this->collisions = 0;
    this->direction = (u8)(-GET_ANGLE_HI(this) ^ 0x80U) >> 3;
    GET_TIMER(this) = 0x78;
    GET_ANGULAR_VEL(this) = 0x180;
    GET_HELPER(this)->field_0x0 = 4;
    sub_080368D8(this);
    OctorokBoss_Burning_SubAction1(this);
}

void OctorokBoss_Burning_SubAction1(Entity* this) {
    ProcessMovement(this);
    if (this->collisions != 0) {
        this->subAction = 2;
        GET_HELPER(this)->targetAngle = GET_ANGLE_HI(this);
        if ((this->collisions & 0xee00) != 0) {
            GET_HELPER(this)->targetAngle = -GET_HELPER(this)->targetAngle;
        }
        if ((this->collisions & 0xee) != 0) {
            GET_HELPER(this)->targetAngle = -GET_HELPER(this)->targetAngle ^ 0x80;
        }
        this->knockbackDuration = 0x18;
        this->field_0x46 = 0x200;
        this->knockbackDirection = this->direction ^ 0x10;
        GET_HELPER(this)->fallingStonesTimer += 0x1e;
        InitScreenShake(0x1e, 0);
        SoundReq(SFX_158);
        SoundReq(SFX_14C);
    }
    if (GET_TIMER(this)-- == 0) {
        this->health = 0;
    }
    if ((gRoomTransition.frameCount & 0x1f) == 0) {
        SoundReq(SFX_159);
    }
}

void OctorokBoss_Burning_SubAction2(Entity* this) {
    if ((u32)(GET_HELPER(this)->targetAngle - GET_ANGLE_HI(this) + 7) < 0xf) {
        this->subAction = 1;
        this->direction = ((u8)-GET_ANGLE_HI(this) ^ 0x80) >> 3;
        this->collisions = 0;
        ProcessMovement(this);
    } else {
        if ((u8)(GET_HELPER(this)->targetAngle - GET_ANGLE_HI(this)) >= 0x81) {
            GET_ANGLE(this) -= GET_ANGULAR_VEL(this);
        } else {
            GET_ANGLE(this) += GET_ANGULAR_VEL(this);
        }
    }
}

void sub_080368D8(Entity* this) {
    if (this->field_0x80.HALF.LO != 0) {
        gPlayerEntity.spriteSettings.draw = 1;
        gPlayerEntity.flags |= ENT_COLLIDE;
        gPlayerEntity.collisionLayer = 1;
    }
    this->field_0x76.HWORD = 0xa0;
    this->field_0x74.HWORD = 0xa0;
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

NONMATCH("asm/non_matching/octorokBoss/sub_08036998.inc", void sub_08036998(Entity* this)) {
    u32 tmp;
    s8* tmp2;
    s8 tmp3;
    s32 a, b;

    // TODO regalloc in this awful structure here
    tmp2 = &GET_TIMER(this);
    tmp = this->field_0xf + (u8)*tmp2;
    *tmp2 = tmp;
    if ((s8)this->field_0xf < 0) {
        a = tmp;
        b = -this->actionDelay;
        if (a << 0x18 < b << 0x18) {
            this->field_0xf = -this->field_0xf;
        }
    } else {
        if (((s8)*tmp2) > ((s32)this->actionDelay)) {
            this->field_0xf = -this->field_0xf;
        }
    }
}
END_NONMATCH

// Calculate tail angles regular
ASM_FUNC("asm/non_matching/octorokBoss/sub_080369D0.inc", void sub_080369D0(Entity* this, s32 radius, s32 angleSpeed))
/*{
    s16 r1;
    s32 iVar7;

    u32 index;
    s32 tmp;

    s16 angleDiff;
    Entity** tailObj;

    HelperStruct* helper = GET_HELPER(this);

    // Calculate the angle for the tail end
    helper->tailObjects[0]->field_0x7a.HALF.HI =
        helper->tailObjects[helper->tailCount - 1]->field_0x7a.HALF.HI + GET_TIMER(this);

    // iterate tails from 0 to tailCount-1 to calculate the angles
    for (index = 0; index < helper->tailCount - 1; index++) {
        if (helper->tailObjects[index]->field_0x7a.HALF.HI != helper->tailObjects[index + 1]->field_0x7a.HALF.HI) {
            angleDiff =
                helper->tailObjects[index + 1]->field_0x7a.HALF.HI - helper->tailObjects[index]->field_0x7a.HALF.HI;
            if (angleDiff >= 1) {
                if ((s8)-angleSpeed > angleDiff) {
                    helper->tailObjects[index + 1]->field_0x7a.HALF.HI =
                        helper->tailObjects[index]->field_0x7a.HALF.HI + angleSpeed;
                }
            } else {
                if ((u8)angleSpeed < angleDiff) {
                    helper->tailObjects[index + 1]->field_0x7a.HALF.HI =
                        helper->tailObjects[index]->field_0x7a.HALF.HI - angleSpeed;
                }
            }
        }
    }

    // iterate tails from tailCount-1 to 0 to calculate the positions
    index = helper->tailCount - 1;
    tailObj = &helper->tailObjects[index];
    while (index != 0) {
        // r1 = (s16)((u32)(radius << 0x14) >> 0x10);
        index--;
        tmp = FixedMul(gSineTable[(*tailObj)->prev->field_0x7a.HALF.HI ^ 0x80], radius);
        tmp = FixedDiv(tmp, 0x100);
        (*tailObj)->prev->x.WORD = (*tailObj)->next->x.WORD + ((tmp << 0x10) >> 8);
        tmp = FixedMul(gSineTable[((*tailObj)->prev->field_0x7a.HALF.HI ^ 0x80) + 0x40], radius);
        tmp = FixedDiv(tmp, 0x100);
        (*tailObj)->prev->y.WORD = (*tailObj)->next->y.WORD - ((tmp << 0x10) >> 8);
        tailObj--;
    }
}*/

// calculate tail angles frozen sub_08036AF0
ASM_FUNC("asm/non_matching/octorokBoss/sub_08036AF0.inc", void sub_08036AF0(Entity* this, s32 radius, s32 angleSpeed))
/*{
    u8 bVar1;
    u8 cVar2;
    s16 _newY;
    Entity** tailObjects;
    u32 uVar5;

    s16 angleDiff;
    s16 tmp;
    u32 index;
    Entity* prevTailObject;
    Entity* currentTailObject;
    HelperStruct* helper;

    helper = GET_HELPER(this);
    for (index = helper->tailCount - 1; index != 0; index--) {
        if (angleSpeed == 0) {
            if (radius >= sub_080041DC(helper->tailObjects[index], helper->tailObjects[index - 1]->x.HALF.HI,
                                       helper->tailObjects[index - 1]->y.HALF.HI)) {
                return;
            } else {
                helper->tailObjects[index - 1]->field_0x7a.HALF.HI =
                    sub_080045DA(helper->tailObjects[index - 1]->x.WORD - helper->tailObjects[index]->x.WORD,
                                 helper->tailObjects[index - 1]->y.WORD - helper->tailObjects[index]->y.WORD);

                tmp = FixedMul(gSineTable[helper->tailObjects[index - 1]->field_0x7a.HALF.HI], radius);
                tmp = FixedDiv(tmp, 0x100);
                helper->tailObjects[index - 1]->x.WORD = helper->tailObjects[index]->x.WORD + (((s32)tmp << 0x10) >> 8);
                tmp = FixedMul(gSineTable[helper->tailObjects[index - 1]->field_0x7a.HALF.HI + 0x40], radius);
                helper->tailObjects[index - 1]->y.WORD =
                    helper->tailObjects[index]->y.WORD - ((FixedDiv(tmp, 0x100) << 0x10) >> 8);
            }
        } else {
            if (helper->tailObjects[index - 1]->field_0x7a.HALF.HI != helper->tailObjects[index]->field_0x7a.HALF.HI) {
                angleDiff = ((helper->tailObjects[index]->field_0x7a.HALF.HI -
                              helper->tailObjects[index - 1]->field_0x7a.HALF.HI) *
                             0x1000000) >>
                            0x18;
                if (angleDiff >= 1) {
                    if ((u8)angleSpeed > angleDiff) {
                        helper->tailObjects[index - 1]->field_0x7a.HALF.HI =
                            helper->tailObjects[index]->field_0x7a.HALF.HI - angleSpeed;
                    }
                } else {
                    if ((s8)-angleSpeed < angleDiff) {
                        helper->tailObjects[index - 1]->field_0x7a.HALF.HI =
                            helper->tailObjects[index]->field_0x7a.HALF.HI + angleSpeed;
                    }
                }
            }
            tmp = FixedMul(gSineTable[helper->tailObjects[index - 1]->field_0x7a.HALF.HI], radius);
            tmp = FixedDiv(tmp, 0x100);
            helper->tailObjects[index - 1]->x.WORD = helper->tailObjects[index]->x.WORD + ((tmp << 0x10) >> 8);
            tmp = FixedMul(gSineTable[helper->tailObjects[index - 1]->field_0x7a.HALF.HI + 0x40], radius);
            helper->tailObjects[index - 1]->y.WORD =
                helper->tailObjects[index]->y.WORD - ((FixedDiv(tmp, 0x100) << 0x10) >> 8);
        }
    }
}*/

void OctorokBoss_SetAttackTimer(Entity* this) {
    const u8* attackPatterns;
    if ((GET_BOSS_PHASE(this) == 4) && (GET_PHASE4_ATTACK_PATTERN(this) != 0xff)) {
        this->subAction = ACTION1_ATTACK;
        this->type2 = 0;
        this->field_0x80.HALF.LO = 0;
        attackPatterns = OctorokBoss_Phase4AttackPatterns[GET_PHASE4_ATTACK_PATTERN(this)];
        GET_CURRENT_ATTACK(this) = attackPatterns[GET_NEXT_ATTACK_INDEX(this)];
        GET_NEXT_ATTACK_INDEX(this) += 1;
        if (GET_CURRENT_ATTACK(this) != END_OF_ATTACK_PATTERN) {
            return;
        }
        // End of this pattern, choose the next pattern.
        GET_PHASE4_ATTACK_PATTERN(this) = 0xff;
    }
    this->subAction = ACTION1_WAITFORATTACK;
    if (IS_FROZEN(this)) {
        switch (GET_BOSS_PHASE(this)) {
            case 1:
                GET_TIMER(this) = 30;
                break;
            case 3:
                GET_TIMER(this) = 10;
                break;
        }
    } else {
        if ((s16)gRoomVars.lightLevel != 0x100) {
            // Constantly attack when its dark.
            GET_TIMER(this) = 1;
        } else {
            GET_TIMER(this) = OctorokBoss_AttackTimerValues[GetRandomByWeight(OctorokBoss_AttackTimerWeights)];
        }
    }
}

void OctorokBoss_ResetToSubAction0(Entity* this) {
    GET_ANGULAR_VEL(this) = 0x100;
    GET_HELPER(this)->field_0x0 = 2;
    GET_HELPER(this)->rotation = NO_ROTATION;
    this->subAction = ACTION1_AIMTOWARDSPLAYER;
}

void OctorokBoss_WaitAnotherTurn(Entity* this) {
    this->subAction = ACTION1_WAITFORTURN;
    this->speed = 0xc0;
    GET_HELPER(this)->field_0x0 = 1;
    GET_TIMER(this) = OctorokBoss_TurnTimeValues[GetRandomByWeight(OctorokBoss_TurnTimeWeights)];
}

void OctorokBoss_SetWaitTurnsForNextAttack(Entity* this) {
    GET_PHASE4_ATTACK_PATTERN(this) = 0xff;
    if (IS_FROZEN(this) == FALSE) {
        if ((s16)gRoomVars.lightLevel != 0x100) {
            // Constantly attack when its dark.
            GET_ATTACK_WAIT_TURNS(this) = IS_FROZEN(this);
        } else {
            GET_ATTACK_WAIT_TURNS(this) =
                OctorokBoss_WaitForAttackTurnsValues[GetRandomByWeight(OctorokBoss_WaitForAttackTurnsWeights)];
        }
    } else {
        GET_ATTACK_WAIT_TURNS(this) = 0;
    }
    OctorokBoss_ResetToSubAction0(this);
}

void OctorokBoss_StartRegularAttack(Entity* this) {
    const u8* attackPattern;

    // Set us up for an attack
    this->subAction = ACTION1_ATTACK;
    this->type2 = 0;
    GET_PHASE4_ATTACK_PATTERN(this) = 0xff;
    this->field_0x80.HALF.LO = 0;
    GET_HELPER(this)->field_0x2 = 0;
    if (GET_BOSS_PHASE(this) == 0) {
        // In phase 0 just spit rocks.
        GET_CURRENT_ATTACK(this) = ATTACK_SPITROCK;
        return;
    }
    if (GET_BOSS_PHASE(this) == 4) {
        if (((Random() & 3) == 0) || ((s16)gRoomVars.lightLevel != 0x100)) {
            this->subAction = ACTION1_SUBACTION2;
            this->speed = 0x200;
            GET_TIMER(this) = 0x3c;
            this->collisions = 0;
            GET_HELPER(this)->field_0x0 = 4;
            SoundReq(SFX_159);
            return;
        }
        if (GET_BOSS_PHASE(this) == 4) {
            // Select a new attack pattern that is not the previous one.
            u32 rand;
            GET_NEXT_ATTACK_INDEX(this) = 0;
            rand = Random() & 3;
            if (GET_HELPER(this)->phase4PrevAttackPattern != rand) {
                GET_PHASE4_ATTACK_PATTERN(this) = rand;
            } else {
                GET_PHASE4_ATTACK_PATTERN(this) = (GET_HELPER(this)->phase4PrevAttackPattern + 1) & 3;
            }
            GET_HELPER(this)->phase4PrevAttackPattern = GET_PHASE4_ATTACK_PATTERN(this);
            OctorokBoss_SetAttackTimer(this);
            return;
        }
    }

    if (IS_FROZEN(this) == FALSE) {
        attackPattern = OctorokBoss_NormalAttackPatterns;
    } else {
        attackPattern = OctorokBoss_FrozenAttackPatterns;
    }
    GET_CURRENT_ATTACK(this) = attackPattern[GET_NEXT_ATTACK_INDEX(this)];
    if (++GET_NEXT_ATTACK_INDEX(this) > 4) {
        GET_NEXT_ATTACK_INDEX(this) = 0;
    }
}

void OctorokBoss_ChangePalette(Entity* this, u32 paletteIndex) {
    u32 i;

    ChangeObjPalette(GET_HELPER(this)->mouthObject, paletteIndex);

    for (i = 0; i < 4; i++) {
        ChangeObjPalette(GET_HELPER(this)->legObjects[i], paletteIndex);
    }

    for (i = GET_HELPER(this)->tailCount - 1; i != 0; i--) {
        ChangeObjPalette(GET_HELPER(this)->tailObjects[i], paletteIndex);
    }
}

void sub_08036F60(Entity* this) {
    if ((this->subAction != 4) && (IS_FROZEN(this) == FALSE)) {
        this->field_0x76.HWORD += (s8)this->actionDelay;
        this->field_0x74.HWORD += (s8)this->actionDelay;
        if (this->field_0x76.HWORD < 0x9c) {
            this->actionDelay = 1;
        } else {
            if (this->field_0x76.HWORD > 0xa4) {
                this->actionDelay = 0xff;
            }
        }
    }
}

void OctorokBoss_StepSound(Entity* this, u32 frameMask) {
    if ((gRoomTransition.frameCount & frameMask) == 0) {
        if (IS_FROZEN(this) == FALSE) {
            SoundReq(SFX_163);
        } else {
            SoundReq(SFX_ICE_BLOCK_SLIDE);
        }
    }
}

void sub_08036FE4(Entity* this) {
    if ((IS_FROZEN(this)) && (this->field_0x80.HALF.LO == 0)) {
        if (GET_ANGULAR_VEL(this) != 0) {
            if (GET_HELPER(this)->rotation != NO_ROTATION) {
                if (GET_HELPER(this)->rotation == ROTATION_CW) {
                    GET_ANGLE(this) += GET_ANGULAR_VEL(this);
                } else {
                    GET_ANGLE(this) -= GET_ANGULAR_VEL(this);
                }
            }
            switch (GET_BOSS_PHASE(this)) {
                case 1:
                    GET_ANGULAR_VEL(this)--;
                    break;
                case 3:
                    GET_ANGULAR_VEL(this) -= 2;
                    break;
            }
        }
    }
}

void (*const OctorokBoss_Functions[])(Entity*) = {
    OctorokBoss_OnTick, OctorokBoss_OnTick, sub_08001324, OctorokBoss_OnHealthZero, sub_08001242,
};

void (*const OctorokBoss_Hit_SubActions[])(Entity*) = {
    OctorokBoss_Hit_SubAction0, OctorokBoss_Hit_SubAction1, OctorokBoss_Hit_SubAction2, OctorokBoss_Hit_SubAction3,
    OctorokBoss_Hit_SubAction4, OctorokBoss_Hit_SubAction5, OctorokBoss_Hit_SubAction6,
};

const u8 OctorokBoss_HealthPerPhase[] = {
    3, 1, 3, 1, 3, 1, 3, 0,
};

void (*const OctorokBoss_Actions[])(Entity*) = {
    OctorokBoss_Init, OctorokBoss_Action1, OctorokBoss_Hit, OctorokBoss_Intro, OctorokBoss_Burning,
};

const u8 gUnk_080CF08C[] = {
    0, 4, 0, 0, 1, 5, 0, 0, 1, 4, 0, 0, 1, 3, 0, 0, 1, 2, 0, 0, 2, 1, 0, 0, 1, 1, 0, 0, 3, 6, 0, 0,
};

void (*const OctorokBoss_Intro_SubActions[])(Entity*) = {
    OctorokBoss_Intro_SubAction0, OctorokBoss_Intro_SubAction1, OctorokBoss_Intro_SubAction2,
    OctorokBoss_Intro_SubAction3, OctorokBoss_Intro_SubAction4, OctorokBoss_Intro_SubAction5,
};
void (*const OctorokBoss_Action1_SubActions[])(Entity*) = {
    OctorokBoss_Action1_AimTowardsPlayer, OctorokBoss_Action1_WaitForTurn, OctorokBoss_Action1_ChargeAttack,
    OctorokBoss_Action1_WaitForAttack,    OctorokBoss_Action1_Attack,
};

const u8 OctorokBoss_LegAngleOffset[] = {
    40,
    80,
    176,
    216,
};
const u8 OctorokBoss_LegAngleOffset2[] = {
    128,
    0,
    0,
    128,
};
void (*const OctorokBoss_Action1_Attack_Type2s[])(Entity*) = {
    OctorokBoss_Action1_Attack_Type2_0,
    OctorokBoss_Action1_Attack_Type2_1,
    OctorokBoss_Action1_Attack_Type2_2,
    OctorokBoss_Action1_Attack_Type2_3,
};
void (*const OctorokBoss_AttackFunctions[])(Entity*) = {
    OctorokBoss_ExecuteAttackSpitRock,
    OctorokBoss_ExecuteAttackVacuum,
    OctorokBoss_ExecuteAttackSmoke,
    OctorokBoss_ExecuteAttackFreeze,
};
void (*const OctorokBoss_Burning_SubActions[])(Entity*) = {
    OctorokBoss_Burning_SubAction0,
    OctorokBoss_Burning_SubAction1,
    OctorokBoss_Burning_SubAction2,
};

// These attack timers are only used if the boss isn't frozen and gRoomVars.field_0xc != 0x100
const u8 OctorokBoss_AttackTimerWeights[] = {
    48,
    96,
    80,
    32,
};
const u8 OctorokBoss_AttackTimerValues[] = {
    5,
    10,
    15,
    30,
};

// 5: don't attack
const u8 OctorokBoss_Phase4AttackPattern0[] = {
    ATTACK_SPITROCK, NO_ATTACK, ATTACK_SPITROCK, ATTACK_SMOKE, END_OF_ATTACK_PATTERN,
};
const u8 OctorokBoss_Phase4AttackPattern1[] = {
    ATTACK_VACUUM, NO_ATTACK, ATTACK_SPITROCK, ATTACK_SMOKE, END_OF_ATTACK_PATTERN,
};
const u8 OctorokBoss_Phase4AttackPattern2[] = {
    ATTACK_SPITROCK, NO_ATTACK, ATTACK_SPITROCK, NO_ATTACK, ATTACK_SPITROCK, END_OF_ATTACK_PATTERN,
};

const u8* const OctorokBoss_Phase4AttackPatterns[] = {
    OctorokBoss_Phase4AttackPattern0,
    OctorokBoss_Phase4AttackPattern1,
    OctorokBoss_Phase4AttackPattern2,
    OctorokBoss_Phase4AttackPattern1,
};
const u8 OctorokBoss_TurnTimeWeights[] = {
    48,
    96,
    80,
    32,
};
const u8 OctorokBoss_TurnTimeValues[] = {
    70,
    80,
    90,
    100,
};
const u8 OctorokBoss_WaitForAttackTurnsWeights[] = {
    64,
    128,
    64,
};
const u8 OctorokBoss_WaitForAttackTurnsValues[] = {
    1,
    2,
    3,
};
const u8 OctorokBoss_NormalAttackPatterns[] = {
    ATTACK_VACUUM, ATTACK_SPITROCK, ATTACK_VACUUM, ATTACK_SPITROCK, ATTACK_SPITROCK,
};
const u8 OctorokBoss_FrozenAttackPatterns[] = {
    ATTACK_VACUUM, ATTACK_FREEZE, ATTACK_VACUUM, ATTACK_FREEZE, ATTACK_VACUUM,
};
