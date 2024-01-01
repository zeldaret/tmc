/**
 * @file playerItemGustJar.c
 * @ingroup Items
 *
 * @brief Gust Jar Player Item
 */
#include "entity.h"
#include "functions.h"
#include "player.h"
#include "sound.h"

extern const u8* gUnk_08132714[]; // Anim index lists?
// TODO spriteAnimations in here
// TODO sprite frame in here
extern Hitbox gUnk_08132B28;

void sub_080ADC84(Entity*);
void PlayerItemGustJar_Init(Entity*);
void PlayerItemGustJar_Action1(Entity*);
void PlayerItemGustJar_Action2(Entity*);
void PlayerItemGustJar_Action3(Entity*);
void PlayerItemGustJar_Action4(Entity*);
void sub_080ADCDC(Entity*, u32);
void sub_080ADCA0(Entity*, u32);

void PlayerItemGustJar(Entity* this) {
    static void (*const PlayerItemGustJar_Actions[])(Entity*) = {
        PlayerItemGustJar_Init,    PlayerItemGustJar_Action1, PlayerItemGustJar_Action2,
        PlayerItemGustJar_Action3, PlayerItemGustJar_Action4,
    };

    if (((Entity*)gPlayerState.item != this) || (gPlayerState.gustJarState == PL_JAR_NONE)) {
        DeleteThisEntity();
    }
    PlayerItemGustJar_Actions[this->action](this);
    sub_08078E84(this, &gPlayerEntity.base);
}

void PlayerItemGustJar_Init(Entity* this) {
    this->action = 1;
    this->subtimer = 15;
    this->hitbox = &gUnk_08132B28;
    this->hitbox->unk2[2] = 3;
    this->hitbox->unk2[1] = 3;
    this->hitbox->unk2[3] = 6;
    this->hitbox->unk2[0] = 6;
    sub_080ADC84(this);
    LoadSwapGFX(this, 1, 3);
    InitAnimationForceUpdate(this, this->animationState >> 1);
}

void PlayerItemGustJar_Action1(Entity* this) {
    sub_080ADC84(this);
    if ((this->frame & ANIM_DONE) != 0) {
        this->action = 2;
        sub_080ADCA0(this, 0);
    } else {
        UpdateAnimationSingleFrame(this);
    }
}

void PlayerItemGustJar_Action2(Entity* this) {
    u32 in_r2;
    int windSound;

    if (gPlayerState.gustJarState == PL_JAR_3) {
        this->action++;
        InitAnimationForceUpdate(this, (gPlayerEntity.base.animationState >> 1) + 8);
    } else if (gPlayerState.gustJarState == PL_JAR_BLAST_DONE) {
        this->action = 4;
        InitAnimationForceUpdate(this, (gPlayerEntity.base.animationState >> 1) + 4);
    } else {
        windSound = 0;
        if (this->type != 0) {
            if (this->type == 1) {
                sub_080ADCA0(this, 4);
                this->timer = 24;
                this->type = 2;
            } else {
                sub_080ADCDC(this, 1);
                if (this->timer-- == 0) {
                    sub_080ADCA0(this, 0);
                    this->type = 0;
                }
            }
        } else {
            if ((gPlayerState.gustJarState & 0xf) == PL_JAR_ENT_ATTACHED) {
                this->frameDuration = 0x7f;
            }

            switch (gPlayerState.gustJarCharge) {
                case 3:
                    sub_080ADCDC(this, 3);
                    this->palette.b.b0 = 0;
                    in_r2 = 3;
                    windSound = SFX_WIND3;
                    break;
                case 2:
                    sub_080ADCDC(this, 2);
                    this->palette.b.b0 = 4;
                    in_r2 = 2;
                    windSound = SFX_WIND2;
                    break;
                case 1:
                    sub_080ADCDC(this, 1);
                    this->palette.b.b0 = 1;
                    in_r2 = 1;
                    windSound = SFX_WIND1;
                    break;
            }

            if ((gPlayerState.gustJarState & 0xf) == PL_JAR_ENT_ATTACHED) {
                windSound = SFX_EE;
                in_r2 = 1;
            }
            this->subtimer = this->subtimer - in_r2;
        }
        if ((s8)this->subtimer < 0) {
            if (windSound) {
                SoundReq(windSound);
            }
            this->subtimer = 15;
        }
        this->frameIndex = gPlayerEntity.base.frameIndex - (gPlayerEntity.base.frame & 0x7f);
    }
}

void PlayerItemGustJar_Action3(Entity* this) {
    switch (gPlayerState.gustJarState & 0xf) {
        case PL_JAR_BLAST_DONE:
            this->action++;
            InitAnimationForceUpdate(this, (gPlayerEntity.base.animationState >> 1) + 4);
            break;
        case PL_JAR_SUCK:
            sub_080ADCA0(this, 0);
            this->action = 2;
            break;
        default:
            UpdateAnimationSingleFrame(this);
            break;
    }
}

void PlayerItemGustJar_Action4(Entity* this) {
    if ((this->frame & ANIM_DONE) != 0) {
        this->spriteSettings.draw = 0;
    } else {
        UpdateAnimationSingleFrame(this);
    }
}

void sub_080ADC84(Entity* this) {
    this->spriteSettings.flipX = gPlayerEntity.base.spriteSettings.flipX;
}

void sub_080ADCA0(Entity* this, u32 param_2) {
    const u8* pFVar1 = gUnk_08132714[(param_2 + (gPlayerEntity.base.animationState >> 1))];
    const u8* pFVar2;

    this->animPtr = (void*)pFVar1;
    this->animIndex = *pFVar1;
    pFVar2 = pFVar1 + 1;
    this->animPtr = (void*)pFVar2;
    this->frameDuration = *pFVar2;
    this->animPtr = (void*)++pFVar2;
    sub_080042D0(this, this->animIndex, this->spriteIndex);
}

void sub_080ADCDC(Entity* this, u32 param_2) {
    u32 bVar1;
    u8* pFVar3;

    bVar1 = this->frameDuration;
    this->frameDuration = (u8)(bVar1 - param_2);
    if ((int)((bVar1 - param_2) * 0x1000000) < 1) {
        if (*(u8*)this->animPtr == 0xff) {
            this->animPtr = (u8*)this->animPtr + 1;
            this->animPtr = (u8*)this->animPtr - *(u8*)this->animPtr;
        }
        pFVar3 = this->animPtr;
        this->animIndex = *pFVar3;
        this->animPtr = ++pFVar3;
        this->frameDuration += *pFVar3;
        this->animPtr = ++pFVar3;
        sub_080042D0(this, this->animIndex, this->spriteIndex);
    }
}
