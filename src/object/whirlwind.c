/**
 * @file whirlwind.c
 * @ingroup Objects
 *
 * @brief Whirlwind object
 */
#define NENT_DEPRECATED
#include "area.h"
#include "functions.h"
#include "hitbox.h"
#include "object.h"

void Whirlwind_Init(Entity*);
void Whirlwind_Action1(Entity*);
void Whirlwind_Action2(Entity*);

void Whirlwind(Entity* this) {
    static void (*const Whirlwind_Actions[])(Entity*) = {
        Whirlwind_Init,
        Whirlwind_Action1,
        Whirlwind_Action2,
    };
    u32 tmp = this->health;
    if (((tmp & 0x7f) != 0) && (ReadBit(gArea.filler6, tmp - 1) == 0)) {
        DeleteThisEntity();
    }
    Whirlwind_Actions[this->action](this);
}

void Whirlwind_Init(Entity* this) {
    this->action = 1;
    this->hitbox = (Hitbox*)&gUnk_080FD320;
    this->flags |= ENT_COLLIDE;
    this->hitType = 1;
    this->collisionFlags = 0x47;
    this->hurtType = 0x44;
    this->flags2 = 0x80;
    this->spriteOrientation.flipY = 1;
    this->spriteRendering.b3 = 1;
    this->animationState = this->type;
    this->direction = this->type << 3;
    this->speed = 0x700;
    if (this->type2 == 1) {
        ChangeObjPalette(this, 0x161);
        InitializeAnimation(this, 1);
    } else {
        this->z.HALF.HI = -24;
        InitializeAnimation(this, 1);
    }
    if ((this->flags & ENT_SCRIPTED) != 0) {
        sub_0807DD64(this);
        ExecuteScriptForEntity(this, NULL);
    }
}

void Whirlwind_Action1(Entity* this) {
    if ((this->flags & ENT_SCRIPTED) != 0) {
        ExecuteScriptForEntity(this, NULL);
    }
    if (this->spriteSettings.draw != 0) {
        GetNextFrame(this);
        if ((((((gPlayerState.flags & PL_MINISH) == 0)) && (gPlayerState.field_0x3c == 0)) &&
             ((gPlayerEntity.action == PLAYER_JUMP || ((gPlayerEntity.flags & ENT_COLLIDE) != 0)))) &&
            ((gPlayerEntity.action != PLAYER_BOUNCE && (sub_0800419C(this, &gPlayerEntity, 0xc, 0xc) != 0)))) {
            if (((gPlayerState.flags & PL_PARACHUTE) == 0) && (gPlayerEntity.action != PLAYER_JUMP)) {
                if ((this->type2 != 1) && (-0x10 < gPlayerEntity.z.HALF.HI)) {
                    return;
                }
            } else if (gPlayerEntity.z.HALF.HI == 0) {
                return;
            }
            CopyPosition(this, &gPlayerEntity);
            sub_08004542(this);
            sub_08004542(&gPlayerEntity);
            gPlayerEntity.collisionLayer = 1;
            gPlayerEntity.flags |= ENT_COLLIDE;
            gPlayerState.queued_action = PLAYER_PARACHUTE;
            gPlayerState.field_0x38 = this->type2;
            gPlayerState.field_0x39 = 0xff;
            this->spritePriority.b0 = gPlayerEntity.spritePriority.b0 - 1;
            this->action++;
            PutAwayItems();
            SoundReq(SFX_153);
            SoundReq(SFX_PLY_VO5);
        }
    }
}

void Whirlwind_Action2(Entity* this) {
    UpdateAnimationSingleFrame(this);
    if (sub_0800419C(this, &gPlayerEntity, 0xc, 0xc) == 0) {
        ResetCollisionLayer(this);
        this->spriteOrientation.flipY = 1;
        this->spriteRendering.b3 = 1;
        this->action--;
    }
}
