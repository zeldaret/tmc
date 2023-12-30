/**
 * @file fan.c
 * @ingroup Objects
 *
 * @brief Fan object
 */
#include "collision.h"
#include "entity.h"
#include "flags.h"
#include "functions.h"
#include "object.h"
#include "player.h"
#include "sound.h"

typedef struct {
    Entity base;
    u8 filler[0x4];
    u16 unk6c;
    u16 unk6e;
    u16 unk70;
    u16 unk72;
    u16 unk74;
    u8 filler2[0x8];
    u8 unk7e;
    u8 unk7f;
    u8 filler3[0x4];
    u16 fanFlags;
    u16 unk86;
} FanEntity;

void sub_0809EFB0(FanEntity*);
void sub_0809EE44(FanEntity*);
void sub_0809F08C(FanEntity*);
void sub_0809EE24(FanEntity*);
void sub_0809EE08(FanEntity*);
void sub_0809EE34(FanEntity*);
void sub_0809F0E4(FanEntity*);
void Fan_Init(FanEntity* this);
void Fan_Action1(FanEntity* this);
void Fan_Action2(FanEntity* this);
void Fan_Action3(FanEntity* this);
bool32 sub_0809EF78(FanEntity*, Entity*);

void Fan(Entity* this) {
    static void (*const Fan_Actions[])(FanEntity*) = {
        Fan_Init,
        Fan_Action1,
        Fan_Action2,
        Fan_Action3,
    };
    Fan_Actions[this->action]((FanEntity*)this);
}

void Fan_Init(FanEntity* this) {
    super->direction = (super->type ^ 2) << 3;
    sub_0809EE34(this);
    sub_0809EFB0(this);
    InitializeAnimation(super, super->type);
}

void Fan_Action1(FanEntity* this) {
    if (((this->fanFlags == 0) || CheckFlags(this->fanFlags)) && ((super->type2 != 1 || (--this->unk74 == 0)))) {
        sub_0809EE08(this);
    }
}

void Fan_Action2(FanEntity* this) {
    sub_0809F08C(this);
    sub_0809EE44(this);
    if (this->unk86 != 0) {
        if (this->fanFlags == this->unk86) {
            if (CheckFlags(this->fanFlags)) {
                return;
            }
        } else if (!CheckFlags(this->fanFlags)) {
            return;
        }
        sub_0809EE24(this);
    } else if ((super->type2 == 1) && (--this->unk74 == 0)) {
        sub_0809EE24(this);
    }
}

void Fan_Action3(FanEntity* this) {
    sub_0809F08C(this);
    sub_0809EE44(this);
    if (super->frame & ANIM_DONE) {
        sub_0809EE34(this);
    }
}

void sub_0809EE08(FanEntity* this) {
    super->action = 2;
    this->unk74 = this->unk7f << 2;
    InitializeAnimation(super, super->type);
}

void sub_0809EE24(FanEntity* this) {
    super->action = 3;
    InitializeAnimation(super, super->type + 4);
}

void sub_0809EE34(FanEntity* this) {
    super->action = 1;
    this->unk74 = super->timer << 2;
}

void sub_0809EE44(FanEntity* this) {
    Entity* pEVar1;
    u32 bVar3;
    u32 uVar4;
    LinkedList* pList;

    uVar4 = (super->frame & 7);
    super->speed = this->unk7e << uVar4;
    if (uVar4 != 0) {
        pEVar1 = &gPlayerEntity.base;
        if (sub_0809EF78(this, pEVar1)) {
            if (PlayerCanBeMoved()) {
                sub_08079E58(super->speed, super->direction);
            }
        }
        pList = &gEntityLists[2];
        for (pEVar1 = pList->first; (Entity*)pList != pEVar1; pEVar1 = pEVar1->next) {
            if (pEVar1->kind == PLAYER_ITEM) {
                bVar3 = 0;
                switch (pEVar1->id) {
                    case 0x13:
                        if ((pEVar1->action != 2) || (1 < pEVar1->subAction))
                            bVar3 = 1;
                        break;
                    case 0x2:
                        if (pEVar1->action == 2)
                            break;
                        bVar3 = 1;
                        break;
                    case 0x3:
                        if (pEVar1->x.HALF.HI != gPlayerEntity.base.x.HALF.HI ||
                            pEVar1->y.HALF.HI != gPlayerEntity.base.y.HALF.HI)
                            bVar3 = 1;
                        break;
                        break;
                    case 0x4:
                        if (super->subtimer != 0)
                            bVar3 = 1;
                        break;
                    case 0x11:
                    case 0x19:
                        bVar3 = 1;
                        break;
                }
                if (bVar3) {
                    if (sub_0809EF78(this, pEVar1) != 0) {
                        sub_080044AE(pEVar1, super->speed, super->direction);
                    }
                }
            }
        }
    }
}

bool32 sub_0809EF78(FanEntity* this, Entity* ent) {
    bool32 rv = 0;

    if (((u32)this->unk70 >= ent->x.HALF.HI - this->unk6c) && ((u32)this->unk72 >= ent->y.HALF.HI - this->unk6e)) {
        rv = 1;
    }
    return rv;
}

void sub_0809EFB0(FanEntity* this) {
    static const s8 tileTypeOffsets[] = { 0, 16, -16, 0, 0, -16, 16, 0 };
    u32 cVar1, cVar2;
    s32 sVar4;
    int iVar6;
    int iVar7;
    const u8* collisionData;

    cVar1 = tileTypeOffsets[super->type * 2];
    cVar2 = tileTypeOffsets[super->type * 2 + 1];
    iVar7 = super->x.HALF.HI;
    iVar6 = super->y.HALF.HI;
    collisionData = gMapBottom.collisionData;
    sVar4 = 0;
    do {
        sVar4++;
        iVar7 = iVar7 + cVar1;
        iVar6 = iVar6 + cVar2;
    } while (!IsTileCollision(collisionData, iVar7, iVar6, 9));
    sVar4 = (sVar4 - 1) << 4;

    switch (super->type) {
        case 0:
            this->unk6c = super->x.HALF.HI - 0x10;
            this->unk6e = super->y.HALF.HI + 8;
            this->unk70 = 0x20;
            this->unk72 = sVar4;
            break;
        case 1:
            this->unk6c = super->x.HALF.HI - (sVar4 + 8);
            this->unk6e = super->y.HALF.HI - 0x10;
            this->unk70 = sVar4;
            this->unk72 = 0x20;
            break;
        case 2:
            this->unk6c = super->x.HALF.HI - 0x10;
            this->unk6e = super->y.HALF.HI - (sVar4 + 8);
            this->unk70 = 0x20;
            this->unk72 = sVar4;
            break;
        case 3:
            this->unk6c = super->x.HALF.HI + 8;
            this->unk6e = super->y.HALF.HI - 0x10;
            this->unk70 = sVar4;
            this->unk72 = 0x20;
            break;
    }
}

void sub_0809F08C(FanEntity* this) {
    if (super->subtimer != 0) {
        super->subtimer--;
    }

    GetNextFrame(super);
    if (super->frame & 0x20) {
        super->frame &= ~0x20;
        super->subtimer = 20;
        sub_0809F0E4(this);
    } else {
        if ((super->frame & 0x10) && super->subtimer == 0) {
            super->subtimer = 20;
            super->frame ^= 0x10;
            sub_0809F0E4(this);
        }
    }
}

void sub_0809F0E4(FanEntity* this) {
    static const s8 typeOffsets[] = { 0, 12, -12, 0, 0, -12, 12, 0 };
    Entity* pEVar1;
    const s8* collisionData;

    EnqueueSFX(SFX_183);
    pEVar1 = CreateObject(FAN_WIND, super->type ^ 2, 0);
    if (pEVar1 != NULL) {
        pEVar1->parent = super;
        collisionData = typeOffsets + super->type * 2;
        PositionRelative(super, pEVar1, collisionData[0] << 0x10, collisionData[1] << 0x10);
    }
}
