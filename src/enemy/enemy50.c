/**
 * @file enemy50.c
 * @ingroup Enemies
 *
 * @brief Enemy50 enemy
 */
#include "area.h"
#include "enemy.h"
#include "functions.h"
#include "player.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unk_68[0x5];
    /*0x6d*/ u8 unk_6d;
    /*0x6e*/ u8 unk_6e;
    /*0x6f*/ u8 unk_6f;
    /*0x70*/ u16 unk_70;
    /*0x72*/ u16 unk_72;
    /*0x74*/ u8 unk_74[0x4];
    /*0x78*/ u16 unk_78;
    /*0x7a*/ u8 unk_7a;
    /*0x7b*/ u8 unk_7b;
    /*0x7c*/ u16 unk_7c;
    /*0x7e*/ u16 unk_7e;
    /*0x80*/ u8 unk_80;
} Enemy50Entity;

extern Entity* gUnk_020000B0;

extern void sub_0803F58C(Enemy50Entity*);
extern void sub_0803F6EC(Enemy50Entity*);
extern void sub_0803F66C(Enemy50Entity*);
extern bool32 sub_0803F5A8(Enemy50Entity*);
extern void sub_0803F66C(Enemy50Entity*);
extern void sub_0803F738(Enemy50Entity*);
extern void sub_0803F6C0(Enemy50Entity*);
extern void sub_0803F528(Enemy50Entity*);
extern bool32 sub_0806FD54(Entity*);

extern void (*const Enemy50_Functions[])(Enemy50Entity*);
extern void (*const Enemy50_Actions[])(Enemy50Entity*);
extern void (*const Enemy50_SubActions[])(Enemy50Entity*);
extern const u8 gUnk_080D0E14[];
extern const u8 gUnk_080D0E18[];

bool32 sub_08041300(Enemy50Entity*);
void sub_08041134(Enemy50Entity*);
void sub_08041128(Enemy50Entity*);
void sub_080411CC(Enemy50Entity*);
bool32 sub_080411E8(Enemy50Entity*);
void sub_0804122C(Enemy50Entity*);
bool32 sub_08041170(Enemy50Entity*);

void Enemy50(Enemy50Entity* this) {
    if ((super->type == 1) && ((super->parent)->next == NULL)) {
#ifdef EU
        if (super->action == 8 || super->action == 9) {
#else
        if (sub_08041300(this)) {
#endif
            sub_0803F6EC(this);
        }
        CreateFx(super, FX_DEATH, 0);
        DeleteThisEntity();
    }
    Enemy50_Functions[GetNextFunction(super)](this);
    EnemySetFXOffset(super, 0, 1, -0x10);
}

void Enemy50_OnTick(Enemy50Entity* this) {
    Enemy50_Actions[super->action](this);
}

void Enemy50_OnCollision(Enemy50Entity* this) {
    if (super->action == 8 || super->action == 9) {
        super->animationState = 0xff;
        InitializeAnimation(super, (super->knockbackDirection >> 4 ^ 1) + 1);
        sub_08041134(this);
        sub_0803F6EC(this);
    }
    if (super->hitType == 0x25 && super->contactFlags == CONTACT_NOW) {
        super->action = 8;
        InitializeAnimation(super, 3);
    } else {
        if (super->contactFlags == CONTACT_NOW) {
            this->unk_7c = 0x78;
            sub_08041128(this);
        }
        if (super->contactFlags == (CONTACT_NOW | 0x1d)) {
            super->zVelocity = Q_16_16(1.5);
        }
        if (super->confusedTime != 0) {
            super->animationState = super->knockbackDirection >> 4;
            InitializeAnimation(super, super->animationState + 7);
            EnemyCreateFX(super, FX_STARS);
        }
        if (super->health != this->unk_7a) {
            if (super->type == 0) {
                super->animationState = super->knockbackDirection >> 4;
                InitializeAnimation(super, super->animationState + 7);
            } else {
                if (super->iframes > 0) {
                    *((u8*)&super->iframes) |= 0x80;
                }
                super->flags |= 0x80;
                super->health = 0xff;
                super->action = 0xa;
                super->timer = 60;
            }
            this->unk_7a = super->health;
        }
    }
    EnemyFunctionHandlerAfterCollision(super, Enemy50_Functions);
}

void Enemy50_OnKnockback(Enemy50Entity* this) {
    GetNextFrame(super);
    GenericKnockback2(super);
    if (super->type == 0) {
        if (((super->knockbackDuration == 0) && (super->health != 0)) && (super->confusedTime == 0)) {
            super->animationState = 0xff;
            if (super->animIndex == 7 || super->animIndex == 8) {
                InitializeAnimation(super, ((super->animIndex - 7) ^ 1) + 1);
            }
        }
    } else {
        super->spriteSettings.draw ^= 1;
        if (super->knockbackDuration == 0) {
            super->spriteSettings.draw = 1;
        }
    }
}

void Enemy50_OnConfused(Enemy50Entity* this) {
    if (super->animIndex != 7 && super->animIndex != 8) {
        InitializeAnimation(super, super->animationState + 7);
    }
    GenericConfused(super);
    if (super->z.HALF.HI == 0) {
        super->z.HALF.HI = -1;
    }
    if (super->confusedTime == 0) {
        InitializeAnimation(super, (super->animationState ^ 1) + 1);
        super->direction = 0xff;
        super->animationState = 0xff;
        sub_08041134(this);
    }
}

void Enemy50_OnGrabbed(Enemy50Entity* this) {
    if (sub_0806F520(super)) {
        Enemy50_SubActions[super->subAction](this);
    } else {
        sub_08041128(this);
        InitializeAnimation(super, (super->direction >> 4) + 1);
    }
}

void Enemy50_SubAction0(Enemy50Entity* this) {
    super->subAction = 1;
    super->gustJarTolerance = 0x3c;
    InitializeAnimation(super, (gPlayerEntity.base.animationState >> 2) + 5);
}

void Enemy50_SubAction1(Enemy50Entity* this) {
    GetNextFrame(super);
    sub_0806F4E8(super);
}

void Enemy50_SubAction2(Enemy50Entity* this) {
    GetNextFrame(super);
    if (sub_0806F3E4(super)) {
        Entity* effect = CreateFx(super, FX_DEATH, 0);
        if (effect != NULL) {
            effect->spritePriority.b0 = 3;
        }
        if (super->type == 0) {
            GenericDeath(super);
        } else {
            DeleteThisEntity();
        }
    }
}

void Enemy50_Init(Enemy50Entity* this) {
    u32 rand;

    sub_0804A720(super);
    rand = Random();
    super->direction = rand & 0x1e;
    super->animationState = 0xff;
    super->gustJarFlags = 1;
    this->unk_7a = super->health;
    this->unk_7b = rand >> 4;
    this->unk_7c = 0;
    if (super->type == 0) {
        super->action = 1;
        super->child = (Entity*)GetCurrentRoomProperty(super->timer);
    } else {
        sub_080411CC(this);
    }
}

void Enemy50_Action1(Enemy50Entity* this) {
    if (sub_080411E8(this)) {
        super->action = 2;
        super->timer = 15;
    }
}

void Enemy50_Action2(Enemy50Entity* this) {
    if (--super->timer == 0) {
        sub_080411CC(this);
        sub_0804122C(this);
    }
}

void Enemy50_Action3(Enemy50Entity* this) {
    GetNextFrame(super);
    if ((super->frame & ANIM_DONE) != 0) {
        super->flags |= 0x80;
        this->unk_7c = this->unk_80 * ((Random() & 0x30) + 0x3c) + 0x78;
        sub_08041128(this);
    }
}

void Enemy50_Action4(Enemy50Entity* this) {
    if (sub_08041170(this) == 0) {
        sub_0803F58C(this);
        GetNextFrame(super);
        if (--super->timer == 0) {
            sub_08041128(this);
        }
    }
}

void Enemy50_Action5(Enemy50Entity* this) {
    u32 rand;

    GetNextFrame(super);
    super->direction = sub_08049F84(super, 1);
    if (super->direction != 0xff) {
        sub_0803F66C(this);
        if (--this->unk_78 == 0) {
            super->action = 6;
            rand = Random();
            super->timer = rand & 0xe0;
            super->speed = 0x100;
            this->unk_7e = ((rand >> 8) & 0x78) + 0x3c;
        }
    } else {
        sub_08041128(this);
    }
}

void Enemy50_Action6(Enemy50Entity* this) {
    u32 tmp;

    GetNextFrame(super);
    if (sub_0803F5A8(this) == 0) {
        sub_08041128(this);
    } else {
        if (!((sub_08049DF4(1) == 0) || (--this->unk_7e == 0))) {
            tmp = super->timer + 1;
            super->timer = tmp;
            if ((tmp & gUnk_080D0E14[tmp * 0x1000000 >> 0x1e]) == 0) {
                sub_08004596(super, GetFacingDirection(super, gUnk_020000B0));
            }
            sub_0803F66C(this);
            ProcessMovement1(super);
        } else {
            super->action = 7;
            super->timer = 30;
        }
    }
}

void Enemy50_Action7(Enemy50Entity* this) {
    GetNextFrame(super);
    if (--super->timer == 0) {
        this->unk_7c = (Random() & 0xf8) + 0xb4;
        sub_08041128(this);
    }
}

void Enemy50_Action8(Enemy50Entity* this) {
    sub_0803F738(this);
    GetNextFrame(super);
    if ((super->frame & ANIM_DONE) != 0) {
        super->action = 9;
        this->unk_78 = 0;
        InitializeAnimation(super, 4);
    }
}

void Enemy50_Action9(Enemy50Entity* this) {
    GetNextFrame(super);
    if ((super->frame & 1) != 0) {
        sub_0803F6C0(this);
    }
    if (sub_0807953C()) {
        this->unk_78 += 8;
    }
    if (gPlayerEntity.base.health == 0) {
        this->unk_78 = 0xe0;
    }
    this->unk_78++;
    if (this->unk_78 >= 0xe0) {
        this->unk_7c = 0x78;
        super->animationState = 0xff;
        super->iframes = -0xc;
        super->knockbackDuration = 0x14;
        super->knockbackSpeed = 0x180;
        super->knockbackDirection = gPlayerEntity.base.animationState << 2 ^ 0x10;
        sub_08041128(this);
        sub_0803F6EC(this);
    } else {
        sub_0803F738(this);
    }
}

void Enemy50_Action10(Enemy50Entity* this) {
    GetNextFrame(super);
    if (--super->timer == 0) {
        sub_08041128(this);
    }
}

void sub_08041128(Enemy50Entity* this) {
    super->action = 4;
    sub_0803F528(this);
}

void sub_08041134(Enemy50Entity* this) {
    s16 tmp;

    super->action = 5;
    super->hitType = 0x25;
    tmp = 0;
    if (gPlayerClones[0] != NULL) {
        tmp = 0x3c;
    }
    this->unk_78 = gUnk_080D0E18[Random() & 3] + tmp;
}

bool32 sub_08041170(Enemy50Entity* this) {
    if (this->unk_7c != 0) {
        this->unk_7c--;
    } else {
        if ((sub_08049FDC(super, 1)) &&
            ((sub_0806FD54(super) ||
              ((0xf < (s16)gArea.lightLevel && (EntityInRectRadius(super, gUnk_020000B0, 0x70, 0x48))))))) {
            sub_08041134(this);
            return TRUE;
        }
    }
    return FALSE;
}

void sub_080411CC(Enemy50Entity* this) {
    super->action = 3;
    super->spriteSettings.draw = 1;
    InitializeAnimation(super, 0);
}

bool32 sub_080411E8(Enemy50Entity* this) {
    if (sub_08049FDC(super, 1) != 0) {
        switch (super->type2) {
            case 1:
                if ((gPlayerState.flags & PL_USE_LANTERN) == 0) {
                    return FALSE;
                }
                return TRUE;
            case 2:
                if ((s16)gArea.lightLevel < 0x10) {
                    return FALSE;
                }
                return TRUE;
            default:
                return TRUE;
        }
    } else {
        return FALSE;
    }
}

void sub_0804122C(Enemy50Entity* this) {
    s16* child;
    u32 rand;
    Enemy50Entity* enemy;
    u32 tmpA;
    u32 tmpB;
    u32 index;

    child = (s16*)super->child;
    rand = Random();
    tmpB = rand & 6;
    tmpA = rand >> 8 & 3;
    for (index = 0; index < 3; index++) {
        enemy = (Enemy50Entity*)CreateEnemy(ENEMY_50, 1);
        if (enemy != NULL) {
            (enemy->base).x.HALF.HI = child[tmpB + 0] + gRoomControls.origin_x;
            (enemy->base).y.HALF.HI = child[tmpB + 1] + gRoomControls.origin_y;
            (enemy->base).parent = super;
            enemy->unk_80 = tmpA;
            enemy->unk_6d |= 4;
            enemy->unk_70 = this->unk_70;
            enemy->unk_72 = this->unk_72;
            enemy->unk_6e = this->unk_6e;
            enemy->unk_6f = this->unk_6f;
            ResolveCollisionLayer(&enemy->base);
            tmpB = (tmpB + 2) & 6;
            tmpA = (tmpA + 1) & 3;
        }
    }
    super->x.HALF.HI = child[tmpB + 0] + gRoomControls.origin_x;
    super->y.HALF.HI = child[tmpB + 1] + gRoomControls.origin_y;
    super->collisionLayer = 0;
    ResolveCollisionLayer(super);
}

#ifndef EU
bool32 sub_08041300(Enemy50Entity* this) {
    if ((super->hitType == 0x25) && (super->contactFlags == CONTACT_NOW)) {
        return TRUE;
    } else {
        return super->action == 8 || super->action == 9;
    }
}
#endif

void (*const Enemy50_Functions[])(Enemy50Entity*) = {
    Enemy50_OnTick,     Enemy50_OnCollision, Enemy50_OnKnockback, (void (*)(Enemy50Entity*))GenericDeath,
    Enemy50_OnConfused, Enemy50_OnGrabbed,
};
void (*const Enemy50_Actions[])(Enemy50Entity*) = {
    Enemy50_Init,    Enemy50_Action1, Enemy50_Action2, Enemy50_Action3, Enemy50_Action4,  Enemy50_Action5,
    Enemy50_Action6, Enemy50_Action7, Enemy50_Action8, Enemy50_Action9, Enemy50_Action10,
};
void (*const Enemy50_SubActions[])(Enemy50Entity*) = {
    Enemy50_SubAction0,
    Enemy50_SubAction1,
    Enemy50_SubAction2,
};
const u8 gUnk_080D0E14[] = {
    15,
    7,
    3,
    1,
};
const u8 gUnk_080D0E18[] = {
    15,
    25,
    34,
    45,
};
