#include "asm.h"
#include "entity.h"
#include "functions.h"
#include "sound.h"
#include "object.h"

static const Hitbox gUnk_0811B9D0;

void PlayerItemPacciCaneProjectile_Init(Entity* this);
void sub_080701F8(Entity* this);
void sub_0807037C(Entity* this);
void sub_08070398(Entity* this);
void sub_080703BC(Entity* this);
void sub_08070458(Entity* this);

extern void sub_08017744(Entity*);
extern u8* sub_08008782(Entity*, u32, u32, u32);

void PlayerItemPacciCaneProjectile(Entity* this) {
    static void (*const PlayerItemPacciCaneProjectile_Actions[])(Entity*) = {
        PlayerItemPacciCaneProjectile_Init, sub_080701F8, sub_0807037C, sub_08070398, sub_080703BC,
    };
    PlayerItemPacciCaneProjectile_Actions[this->action](this);
}

extern u8 gUnk_08003E44;

typedef struct {
    u8 flipX;
    u8 flipY;
    s8 unk2;
    s8 unk3;
    u8 animIndex;
    u8 filler[3];
} gUnk_0811B9A8_struct;

void PlayerItemPacciCaneProjectile_Init(Entity* this) {
    static const s8 gUnk_0811B9A0[] = {
        0, -18, 14, 0, 0, 14, -14, 0,
    };
    static const gUnk_0811B9A8_struct gUnk_0811B9A8[] = {
        { 0, 0, 0, -5, 17, { 0, 0, 0 } },
        { 1, 0, 5, 0, 18, { 0, 0, 0 } },
        { 0, 1, 0, 5, 17, { 0, 0, 0 } },
        { 0, 0, -5, 0, 18, { 0, 0, 0 } },
    };
    const gUnk_0811B9A8_struct* ptr;

    this->action = 1;
    this->spriteSettings.draw = 1;
    COLLISION_ON(this);
    this->direction = this->animationState << 2;
    this->speed = 0x200;
    *(u32*)&this->field_0x74 = 0x40;
    *(u32*)&this->field_0x78 = 0x1e0;
    this->x.HALF.HI = gPlayerEntity.x.HALF.HI + gUnk_0811B9A0[this->animationState];
    this->y.HALF.HI = gPlayerEntity.y.HALF.HI + gUnk_0811B9A0[this->animationState + 1];
    this->collisionFlags = 7;
    this->flags2 = 0x8a;
    this->hitbox = (Hitbox*)&gUnk_0811B9D0;
    if (this->collisionLayer == 2) {
        this->type = 1;
    } else {
        this->type = 0;
    }
    this->spriteOrientation.flipY = gPlayerEntity.spriteOrientation.flipY;
    ptr = &gUnk_0811B9A8[(this->animationState >> 1)];
    this->spriteSettings.flipX = ptr->flipX;
    this->spriteSettings.flipY = ptr->flipY;
    this->animIndex = ptr->animIndex;
    *(int*)&this->field_0x6c = ptr->unk2;
    this->field_0x70.WORD = ptr->unk3;
    sub_0801766C(this);
    InitializeAnimation(this, this->animIndex);
    SoundReq(SFX_1DD);
}

void sub_080701F8(Entity* this) {
    static const s8 gUnk_0811B9C8[] = {
        0, -4, 4, 0, 0, 4, -4, 0,
    };
    u32 cVar1;
    u32 cVar2;
    u8* iVar3;
    Entity* pEVar4;

    cVar1 = gUnk_0811B9C8[this->animationState];
    cVar2 = gUnk_0811B9C8[this->animationState + 1];
    iVar3 = sub_08008782(this, 10, cVar1, cVar2);
    if (iVar3) {
        pEVar4 = CreateObject(OBJECT_53, iVar3[5], iVar3[2]);
        if (pEVar4) {
            pEVar4->timer = iVar3[3];
            pEVar4->x.HALF.HI = this->x.HALF.HI + cVar1;
            pEVar4->y.HALF.HI = this->y.HALF.HI + cVar2;
        }

        sub_08070458(this);
        return;
    }

    if ((--(*(int*)&this->field_0x74) == -1) || (--(*(int*)&this->field_0x78) == -1)) {
        sub_08070458(this);
    } else {
        GetNextFrame(this);
        LinearMoveUpdate(this);
        if (this->type == 0) {
            sub_0800451C(this);
        }
        if (sub_080B1BA4(COORD_TO_TILE(this), gPlayerEntity.collisionLayer, 0x80) == 0) {
            if (sub_080040D8(this, &gUnk_08003E44, this->x.HALF.HI, this->y.HALF.HI) == 0) {
                if (GetTileUnderEntity(this) == 0x19) {
                    this->action = 4;
                    COLLISION_OFF(this);
                    this->x.HALF.HI = (this->x.HALF.HI & 0xfff0) | 8;
                    this->y.HALF.HI = (this->y.HALF.HI & 0xfff0) | 8;
                    this->spritePriority.b0 = 7;
                    this->field_0x7c.WORD = GetTileIndex(COORD_TO_TILE(this), this->collisionLayer);
                    InitializeAnimation(this, 0x14);
                    SetTile(0x4020, COORD_TO_TILE(this), this->collisionLayer);
                    return;
                }
            } else {
                sub_08070458(this);
            }
        }
        if (this->contactFlags != 0) {
            sub_08070458(this);
        }
    }
}

void sub_0807037C(Entity* this) {
    GetNextFrame(this);
    if ((this->frame & ANIM_DONE) != 0) {
        DeleteThisEntity();
    }
}

void sub_08070398(Entity* this) {
    GetNextFrame(this);
    LinearMoveUpdate(this);
    if (GravityUpdate(this, 0x2000) == 0) {
        DeleteThisEntity();
    }
}

void sub_080703BC(Entity* this) {
    GetNextFrame(this);
    switch (GetTileIndex(COORD_TO_TILE(this), this->collisionLayer)) {
        default:
            this->field_0x7c.WORD = 0;
            sub_08070458(this);
            break;
        case 0x4021:
            sub_08070458(this);
            break;
        case 0x4070:
            *(int*)&this->field_0x78 = 0xff;
        case 0x4020:
            if (--(*(int*)&this->field_0x78) == -1) {
                sub_08070458(this);
            } else {
                if (this->contactFlags == 0) {
                    return;
                }
                if (((this->contactFlags & 0x7f) == 0) && (this->action != 0x1a)) {
                    return;
                }
                sub_08070458(this);
                return;
            }
            break;
    }
}

void sub_08070458(Entity* this) {
    this->action = 2;
    COLLISION_OFF(this);
    this->speed = 0;
    if (this->field_0x7c.WORD != 0) {
        SetTile(this->field_0x7c.WORD, TILE(this->x.HALF.HI, this->y.HALF.HI), this->collisionLayer);
    }
    InitializeAnimation(this, 0x13);
    sub_08017744(this);
    SoundReq(SFX_199);
}

static const Hitbox gUnk_0811B9D0 = { 0, 0, 4, 2, 2, 4, 4, 4 };
