/**
 * @file enemy64.c
 * @ingroup Enemies
 *
 * @brief Enemy64 enemy
 */
#include "enemy.h"
#include "fade.h"
#include "functions.h"
#include "tiles.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unk_68[0x6];
    /*0x6e*/ u8 unk_6e;
    /*0x6f*/ u8 unk_6f[0x5];
    /*0x74*/ s16 unk_74;
    /*0x76*/ u16 unk_76;
    /*0x78*/ u16 unk_78;
    /*0x7a*/ u16 unk_7a;
    /*0x7c*/ u8 unk_7c;
    /*0x7d*/ u8 unk_7d;
    /*0x7e*/ u16 unk_7e;
    /*0x80*/ u16 unk_80;
    /*0x82*/ u16 unk_82;
} Enemy64Entity;

extern void sub_08047EA4(Entity*, u32); // gyorgMale

void sub_080499F0(Enemy64Entity*);
void sub_08049998(Enemy64Entity*, u32);
void Enemy64_Action2_SubAction1(Enemy64Entity*);
void sub_08049944(Enemy64Entity*);
bool32 sub_08049A8C(Enemy64Entity*);
void sub_08049AB0(Enemy64Entity*);
void sub_08049B20(Enemy64Entity*);
void Enemy64_Init(Enemy64Entity* this);
void Enemy64_Action1(Enemy64Entity* this);
void Enemy64_Action2(Enemy64Entity* this);
void Enemy64_Action3(Enemy64Entity* this);
void Enemy64_Action4(Enemy64Entity* this);
void Enemy64_Action1_SubAction0(Enemy64Entity* this);
void Enemy64_Action1_SubAction1(Enemy64Entity* this);
void Enemy64_Action2_SubAction0(Enemy64Entity* this);
void Enemy64_Action2_SubAction1(Enemy64Entity* this);
void Enemy64_Action2_SubAction2(Enemy64Entity* this);
void Enemy64_Action2_SubAction3(Enemy64Entity* this);
void Enemy64_Action2_SubAction4(Enemy64Entity* this);
void Enemy64_Action2_SubAction5(Enemy64Entity* this);
void Enemy64_Action3_SubAction0(Enemy64Entity* this);
void Enemy64_Action3_SubAction1(Enemy64Entity* this);
void Enemy64_Action3_SubAction2(Enemy64Entity* this);
void Enemy64_Action3_SubAction3(Enemy64Entity* this);
void Enemy64_Action4_SubAction0(Enemy64Entity* this);
void Enemy64_Action4_SubAction1(Enemy64Entity* this);
void Enemy64_Action4_SubAction2(Enemy64Entity* this);
void Enemy64_Action4_SubAction3(Enemy64Entity* this);
void Enemy64_Action4_SubAction4(Enemy64Entity* this);
void Enemy64_Action4_SubAction5(Enemy64Entity* this);
void Enemy64_Action4_SubAction6(Enemy64Entity* this);
void Enemy64_Action4_SubAction7(Enemy64Entity* this);

void Enemy64(Enemy64Entity* this) {
    static void (*const Enemy64_Actions[])(Enemy64Entity*) = {
        Enemy64_Init, Enemy64_Action1, Enemy64_Action2, Enemy64_Action3, Enemy64_Action4,
    };
    if (super->action != 0) {
        super->spriteSettings.draw = this->unk_7d;
    }
    if (super->health == 0) {
        super->health = 0xff;
        super->action = 4;
        super->subAction = 0;
    }
    Enemy64_Actions[super->action](this);
    SetAffineInfo(super, 0xaa, 0xaa, this->unk_78);
    super->animationState = -(this->unk_78 >> 8);
    sub_080499F0(this);
    this->unk_7d = super->spriteSettings.draw;
    if (((super->spriteSettings.draw == 1) && (0x100 < (super->y.HALF.HI - gRoomControls.scroll_y) + 0x30U))) {
        super->spriteSettings.draw = 0;
    }
}

void Enemy64_Init(Enemy64Entity* this) {
    Entity* tail;

    if (CheckFlags(0x7c)) {
        SetTile(SPECIAL_TILE_129, TILE_POS(10, 0), LAYER_TOP);
        SetTile(SPECIAL_TILE_129, TILE_POS(10, 1), LAYER_TOP);
        SetTile(SPECIAL_TILE_129, TILE_POS(10, 2), LAYER_TOP);
        SetTile(SPECIAL_TILE_129, TILE_POS(10, 3), LAYER_TOP);
        DeleteThisEntity();
    } else {
        sub_0807B7D8(0x323, TILE_POS(10, 0), LAYER_BOTTOM);
        sub_0807B7D8(0x323, TILE_POS(10, 1), LAYER_BOTTOM);
        sub_0807B7D8(0x323, TILE_POS(10, 2), LAYER_BOTTOM);
        sub_0807B7D8(0x323, TILE_POS(10, 3), LAYER_BOTTOM);
    }
    tail = CreateProjectile(GYORG_TAIL);
    if (tail != NULL) {
        tail->type = 1;
        tail->parent = super;
        super->child = tail;
        super->action = 1;
        super->subAction = 0;
        super->timer = 60;
        super->direction = 0xc0;
        super->animationState = 0xc0;
        super->speed = 0x300;
        super->spriteRendering.b0 = 3;
        super->spriteSettings.draw = 1;
        super->spriteOrientation.flipY = 2;
        super->spriteRendering.b3 = 2;
        super->collisionLayer = 2;
        this->unk_7c = 0;
        this->unk_78 = 0x4000;
        this->unk_7a = 0x4000;
        InitAnimationForceUpdate(super, 0);
    }
}

void Enemy64_Action1(Enemy64Entity* this) {
    static void (*const Enemy64_Action1_SubActions[])(Enemy64Entity*) = {
        Enemy64_Action1_SubAction0,
        Enemy64_Action1_SubAction1,
    };
    Enemy64_Action1_SubActions[super->subAction](this);
    UpdateAnimationSingleFrame(super);
}

void Enemy64_Action1_SubAction0(Enemy64Entity* this) {
    if (super->timer != 0) {
        super->timer--;
    } else {
        sub_08049998(this, ((0x100 - super->direction) & 0xff) << 8);
        if ((gRoomControls.origin_x - 0x100) > super->x.HALF.HI) {
            super->subAction = 1;
            super->direction = 0x80;
            super->animationState = 0x80;
            super->speed = 0xc0;
            super->x.HALF.HI = gRoomControls.origin_x + 0xa8;
            super->y.HALF.HI = gRoomControls.origin_y - 0x40;
            this->unk_78 = 0x8000;
            this->unk_7a = 0x8000;
        }
    }
}

void Enemy64_Action1_SubAction1(Enemy64Entity* this) {
    sub_08049998(this, ((0x100 - super->direction) & 0xff) << 8);
    if ((gRoomControls.origin_y + 0x40) < super->y.HALF.HI) {
        super->action = 2;
        super->subAction = 0;
    }
}

void Enemy64_Action2(Enemy64Entity* this) {
    static void (*const Enemy64_Action2_SubActions[])(Enemy64Entity*) = {
        Enemy64_Action2_SubAction0, Enemy64_Action2_SubAction1, Enemy64_Action2_SubAction2,
        Enemy64_Action2_SubAction3, Enemy64_Action2_SubAction4, Enemy64_Action2_SubAction5,
    };
    Enemy64_Action2_SubActions[super->subAction](this);
    UpdateAnimationSingleFrame(super);
}

void Enemy64_Action2_SubAction0(Enemy64Entity* this) {
    u16 uVar1;
    u16* puVar2;

    super->subAction = 1;
    super->speed = 0x120;
    this->unk_6e = 0;
    if ((s32)(super->x.HALF.HI - (u32)gRoomControls.origin_x) < 0xa8) {
        this->unk_80 = 0xd8;
        this->unk_74 = 0x100;
    } else {
        this->unk_80 = 0x78;
        this->unk_74 = 0xff00;
    }
    this->unk_80 += gRoomControls.origin_x;
    if ((s32)(super->y.HALF.HI - (u32)gRoomControls.origin_y) < 0x80) {
        this->unk_82 = 0xb0;
    } else {
        this->unk_82 = 0x50;
        this->unk_74 *= -1;
    }
    this->unk_82 += gRoomControls.origin_y;
    Enemy64_Action2_SubAction1(this);
}

void Enemy64_Action2_SubAction1(Enemy64Entity* this) {
    u32 tmp = CalculateDirectionFromOffsets(this->unk_80 - super->x.HALF.HI, this->unk_82 - super->y.HALF.HI);
    if (4 < (((super->direction - tmp) + 2) & 0xff)) {
        if (((tmp - super->direction) & 0x80) != 0) {
            super->direction--;
        } else {
            super->direction++;
        }
    }
    sub_08049998(this, ((0x100 - super->direction) & 0xff) << 8);
    if (EntityWithinDistance(super, this->unk_80, this->unk_82, (super->speed >> 0x10) + 0x10)) {
        super->subAction = 2;
        super->speed = 0xc0;
        this->unk_7e = 0x100;
        this->unk_76 = (u16)super->direction << 8;
    }
}

void Enemy64_Action2_SubAction2(Enemy64Entity* this) {
    u32 iVar1;
    u32 uVar2;
    u32 uVar3;

    iVar1 = this->unk_76 += this->unk_74;
    uVar2 = iVar1 * 0x10000;
    super->direction = (u8)(uVar2 >> 0x18);
    if (((uVar2 >> 0x18 & 0x1f) == 0) &&
        (uVar3 = CalculateDirectionTo(super->x.HALF.HI, super->y.HALF.HI, gRoomControls.origin_x + 0xa8,
                                      gRoomControls.origin_y + 0x80),
         ((((uVar3 + 2) & 0x1c) - (super->direction >> 3)) & 0xf) == 8)) {
        super->subAction = 4;
        super->timer = 60;
        super->subtimer = 7;
    }
    sub_08049944(this);
    sub_08047EA4(super, ((0x100 - super->direction) & 0xff) << 8);
}

void Enemy64_Action2_SubAction3(Enemy64Entity* this) {
    s32 iVar1;
    u32 uVar2;

    iVar1 = this->unk_76 += this->unk_74;
    uVar2 = iVar1 * 0x10000;
    super->direction = (uVar2 >> 0x18);
    if (super->timer == 0) {
        if ((uVar2 >> 0x18 & 0x1f) == 0) {
            super->subAction = 4;
            super->timer = 90;
        }
    } else {
        if (sub_08049A8C(this)) {
            Entity* projectile = CreateProjectile(GYORG_MALE_ENERGY_PROJECTILE);
            if (projectile != NULL) {
                projectile->collisionLayer = 2;
                projectile->parent = super;
                UpdateSpriteForCollisionLayer(projectile);
            }
        }
    }
    sub_08049944(this);
    sub_08047EA4(super, ((0x100 - super->direction) & 0xff) << 8);
}

void Enemy64_Action2_SubAction4(Enemy64Entity* this) {
    sub_08049998(this, ((0x100 - super->direction) & 0xff) << 8);
    if (--super->timer == 0) {
        if (--super->subtimer == 0) {
            super->subAction = 5;
            super->speed += 0x40;
        } else {
            super->subAction = 3;
            super->timer = 10;
        }
    } else if (super->timer == 80) {
        Entity* enemy = CreateEnemy(GYORG_MALE_EYE, Random() & 3);
        if (enemy != NULL) {
            enemy->parent = super;
        }
    }
}

void Enemy64_Action2_SubAction5(Enemy64Entity* this) {
    sub_08049998(this, ((0x100 - super->direction) & 0xff) << 8);
    if (EntityWithinDistance(super, gRoomControls.origin_x + 0xa8, gRoomControls.origin_y + 0x80, 0x70) == FALSE) {
        super->action = 3;
        super->subAction = 0;
    }
}

void Enemy64_Action3(Enemy64Entity* this) {
    static void (*const Enemy64_Action3_SubActions[])(Enemy64Entity*) = {
        Enemy64_Action3_SubAction0,
        Enemy64_Action3_SubAction1,
        Enemy64_Action3_SubAction2,
        Enemy64_Action3_SubAction3,
    };
    Enemy64_Action3_SubActions[super->subAction](this);
    UpdateAnimationSingleFrame(super);
}

void Enemy64_Action3_SubAction0(Enemy64Entity* this) {
    u32 tmp = CalculateDirectionFromOffsets(gRoomControls.origin_x + 0xa8 - super->x.HALF.HI,
                                            gRoomControls.origin_y + 0x80 - super->y.HALF.HI);
    if (tmp != super->direction) {
        if (((tmp - super->direction) & 0x80) != 0) {
            super->direction--;
        } else {
            super->direction++;
        }
    } else {
        super->subAction = 1;
        super->speed = 0x180;
    }
    sub_08049944(this);
    sub_08047EA4(super, ((0x100 - super->direction) & 0xff) << 8);
}

void Enemy64_Action3_SubAction1(Enemy64Entity* this) {
    static const s8 gUnk_080D29B8[] = {
        144, 112, 56, 200, 0, 0, 0, 0,
    };
    if (EntityWithinDistance(super, gRoomControls.origin_x + 0xa8, gRoomControls.origin_y + 0x80, 0x28)) {
        super->subAction = 2;
        super->timer = 45;
        this->unk_74 = gUnk_080D29B8[Random() & 7];
        this->unk_76 = super->direction << 8;
    }
    sub_08049998(this, ((0x100 - super->direction) & 0xff) << 8);
}

void Enemy64_Action3_SubAction2(Enemy64Entity* this) {
    this->unk_76 += this->unk_74;
    super->direction = this->unk_76 >> 8;
    sub_08049998(this, ((0x100 - super->direction) & 0xff) << 8);
    if (--super->timer == 0) {
        super->subAction = 3;
        super->timer = 30;
    }
}

void Enemy64_Action3_SubAction3(Enemy64Entity* this) {
    sub_08049998(this, ((0x100 - super->direction) & 0xff) << 8);
    if (--super->timer == 0) {
        super->action = 2;
        super->subAction = 0;
    }
}

void Enemy64_Action4(Enemy64Entity* this) {
    static void (*const Enemy64_Action4_SubActions[])(Enemy64Entity*) = {
        Enemy64_Action4_SubAction0, Enemy64_Action4_SubAction1, Enemy64_Action4_SubAction2, Enemy64_Action4_SubAction3,
        Enemy64_Action4_SubAction4, Enemy64_Action4_SubAction5, Enemy64_Action4_SubAction6, Enemy64_Action4_SubAction7,
    };
    Enemy64_Action4_SubActions[super->subAction](this);
    UpdateAnimationSingleFrame(super);
}

void Enemy64_Action4_SubAction0(Enemy64Entity* this) {
    SoundReq(SFX_BOSS_DIE);
    if (PlayerCanBeMoved() && gPlayerEntity.base.z.HALF.HI == 0) {
        SetPlayerControl(CONTROL_2);
        super->subAction = 2;
        super->timer = 30;
    } else {
        super->subAction = 1;
    }
    sub_08049944(this);
}

void Enemy64_Action4_SubAction1(Enemy64Entity* this) {
    if (PlayerCanBeMoved() && gPlayerEntity.base.z.HALF.HI == 0) {
        SetPlayerControl(CONTROL_2);
        super->subAction = 2;
        super->timer = 1;
    }
    sub_08049944(this);
}

void Enemy64_Action4_SubAction2(Enemy64Entity* this) {
    if (--super->timer == 0) {
        super->subAction = 3;
        super->timer = 180;
        super->speed = 0x100;
        super->direction -= 0x40;
    }
    sub_08049944(this);
}

void Enemy64_Action4_SubAction3(Enemy64Entity* this) {
    sub_08049AB0(this);
    if (--super->timer == 0) {
        super->timer = 30;
        super->subAction = 4;
        super->speed = 0x400;
        super->direction = super->animationState;
        SoundReq(SFX_BOSS_DIE);
    } else {
        super->direction ^= 0x80;
        sub_08049B20(this);
    }
    sub_08049944(this);
}

void Enemy64_Action4_SubAction4(Enemy64Entity* this) {
    sub_08049AB0(this);
    sub_08049998(this, ((0x100 - super->direction) & 0xff) << 8);
    if (--super->timer == 0) {
        super->subAction = 5;
        SetFade(FADE_IN_OUT | FADE_INSTANT, 0x10);
    }
}

void Enemy64_Action4_SubAction5(Enemy64Entity* this) {
    Entity* entity;
    sub_08049944(this);
    if (gFadeControl.active == 0) {
        super->subAction = 6;
        super->spriteSettings.draw = 0;
        entity = super->child;
        entity->flags &= ~0x80;
        entity->spriteSettings.draw = 0;
        entity = entity->child;
        entity->flags &= ~0x80;
        entity->spriteSettings.draw = 0;
        entity = entity->child;
        entity->flags &= ~0x80;
        entity->spriteSettings.draw = 0;
        entity = &gPlayerEntity.base;
        entity->x.HALF.HI = gRoomControls.origin_x + 0xa8;
        entity->y.HALF.HI = gRoomControls.origin_y + 0x80;
        entity->animationState = 0;
        sub_080809D4();
        SetFade(FADE_INSTANT, 4);
    }
}

void Enemy64_Action4_SubAction6(Enemy64Entity* this) {
    if (gFadeControl.active == 0) {
        super->subAction = 7;
        super->timer = 160;
        SoundReq(SFX_SECRET);
        SetFlag(0x7c);
        SetPlayerControl(CONTROL_1);
    }
}

void Enemy64_Action4_SubAction7(Enemy64Entity* this) {
    if (--super->timer == 0) {
        DeleteThisEntity();
    } else if (super->timer == 16) {
        sub_0807B7D8(0x36, TILE_POS(10, 3), LAYER_BOTTOM);
        SetTile(SPECIAL_TILE_129, TILE_POS(10, 3), LAYER_TOP);
        SoundReq(SFX_HEART_GET);
    } else if (super->timer == 24) {
        sub_0807B7D8(0x36, TILE_POS(10, 2), LAYER_BOTTOM);
        SetTile(SPECIAL_TILE_129, TILE_POS(10, 2), LAYER_TOP);
        SoundReq(SFX_HEART_GET);
    } else if (super->timer == 32) {
        sub_0807B7D8(0x36, TILE_POS(10, 1), LAYER_BOTTOM);
        SetTile(SPECIAL_TILE_129, TILE_POS(10, 1), LAYER_TOP);
        SoundReq(SFX_HEART_GET);
    } else if (super->timer == 40) {
        sub_0807B7D8(0x36, TILE_POS(10, 0), LAYER_BOTTOM);
        SetTile(SPECIAL_TILE_129, TILE_POS(10, 0), LAYER_TOP);
        SoundReq(SFX_HEART_GET);
    }
}

void sub_08049944(Enemy64Entity* this) {
    this->unk_7c = (this->unk_7c << 1 & 0x7f) | (this->unk_7c & 0x80);
    if (EntityWithinDistance(super, gPlayerEntity.base.x.HALF.HI, gPlayerEntity.base.y.HALF.HI, 0x20)) {
        gPlayerState.field_0x14 = 1;
        if (gPlayerEntity.base.z.HALF.HI == 0) {
            gPlayerState.flags |= PL_FLAGS2;
            this->unk_7c |= 1;
        }
    }
}

void sub_08049998(Enemy64Entity* this, u32 param_2) {
    s32 tmpX;
    s32 tmpY;

    sub_08049944(this);
    sub_08047EA4(super, param_2);
    tmpX = super->x.HALF.HI;
    tmpY = super->y.HALF.HI;
    LinearMoveAngle(super, super->speed, super->direction);
    if (((this->unk_7c & 1) != 0) && PlayerCanBeMoved()) {
        gPlayerEntity.base.x.HALF.HI = (super->x.HALF.HI - tmpX) + gPlayerEntity.base.x.HALF.HI;
        gPlayerEntity.base.y.HALF.HI = (super->y.HALF.HI - tmpY) + gPlayerEntity.base.y.HALF.HI;
    }
}

void sub_080499F0(Enemy64Entity* this) {
    u32 tmp;

    if ((((super->action != 0) && (gPlayerEntity.base.z.HALF.HI == 0)) && (PlayerCanBeMoved())) &&
        ((this->unk_7c & 1) == 0)) {
        if (EntityWithinDistance(&gPlayerEntity.base, super->x.HALF.HI, super->y.HALF.HI, 0x24) &&
            ((this->unk_7c & 2) == 0)) {
            tmp = CalculateDirectionFromOffsets((s32)gPlayerEntity.base.x.HALF.HI - super->x.HALF.HI,
                                                (s32)gPlayerEntity.base.y.HALF.HI - super->y.HALF.HI);
            gPlayerEntity.base.x.WORD = super->x.WORD + gSineTable[tmp] * 0x2400;
            gPlayerEntity.base.y.WORD = super->y.WORD + gSineTable[tmp + 0x40] * -0x2400;
        }
        this->unk_7c = 0;
    }
}

bool32 sub_08049A8C(Enemy64Entity* this) {
    if ((--super->timer == 0) && ((Random() & 0xf) != 0)) {
        return TRUE;
    } else {
        return FALSE;
    }
}

void sub_08049AB0(Enemy64Entity* this) {
    u32 rand;

    if ((++super->subtimer & 0xf) == 0) {
        Entity* effect = CreateFx(super, FX_GIANT_EXPLOSION3, 0);
        if (effect != NULL) {
            rand = Random();
            effect->x.HALF.HI += ((rand & 0x30) - 0x18);
            effect->y.HALF.HI += (((rand >> 8) & 0x30) - 0x18);
            effect->spritePriority.b0 = 3;
            effect->collisionLayer = 2;
            UpdateSpriteForCollisionLayer(effect);
        }
    }
}

void sub_08049B20(Enemy64Entity* this) {
    s32 tmpX;
    s32 tmpY;

    sub_08049944(this);
    tmpX = super->x.HALF.HI;
    tmpY = super->y.HALF.HI;
    LinearMoveAngle(super, super->speed, super->direction);
    if (((this->unk_7c & 1) != 0) && PlayerCanBeMoved()) {
        gPlayerEntity.base.x.HALF.HI = (super->x.HALF.HI - tmpX) + gPlayerEntity.base.x.HALF.HI;
        gPlayerEntity.base.y.HALF.HI = (super->y.HALF.HI - tmpY) + gPlayerEntity.base.y.HALF.HI;
    }
}
