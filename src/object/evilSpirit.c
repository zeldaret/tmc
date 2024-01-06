#include "entity.h"
#include "functions.h"
#include "flags.h"
#include "object.h"

typedef struct {
    Entity base;
    u8 filler[0xe];
    u16 unk76;
    u16 unk78;
    u16 unk7a;
    u16 unk7c;
    u8 filler2;
    u8 unk7f;
    s32 x;
    s32 y;
} EvilSpiritEntity;

void EvilSpirit_Init(EvilSpiritEntity*);
void EvilSpirit_Action1(EvilSpiritEntity*);
void EvilSpirit_Action2(EvilSpiritEntity*);
void EvilSpirit_Action3(EvilSpiritEntity*);

void EvilSpirit(Entity* this) {
    static void (*const EvilSpirit_Actions[])(EvilSpiritEntity*) = {
        EvilSpirit_Init,
        EvilSpirit_Action1,
        EvilSpirit_Action2,
        EvilSpirit_Action3,
    };
    EvilSpirit_Actions[this->action]((EvilSpiritEntity*)this);
    this->contactFlags = 0;
    SetAffineInfo(this, ((EvilSpiritEntity*)this)->unk76, ((EvilSpiritEntity*)this)->unk7a, 0);
}

void EvilSpirit_Init(EvilSpiritEntity* this) {
    static const u16 gUnk_08120678[] = { 0x100, 0x110, 0x150, 0x1c0, 0x200 };
    u32 uVar1;
    Entity* evilSpiritEnt;
    u32 index;

    if (CheckLocalFlag(SORA_ELDER_RECOVER)) {
        DeleteThisEntity();
    }
    super->action = 1;
    uVar1 = gUnk_08120678[super->type];
    this->unk7c = uVar1;
    this->unk76 = uVar1;
    this->unk7a = this->unk7c;
    if (super->type == 0) {
        this->x = super->x.WORD;
        this->y = super->y.WORD;
        super->spriteRendering.b3 = 0;
        super->parent = super;
        COLLISION_ON(super);
        super->collisionFlags = 7;
        super->hitType = 1;
        super->collisionMask = 4;
        for (index = 0; index < 4; index++) {
            evilSpiritEnt = CreateObjectWithParent(super, EVIL_SPIRIT, index + 1, 0);
            super->child = evilSpiritEnt;
            if (evilSpiritEnt != NULL) {
                evilSpiritEnt->parent = super->parent;
                super->child->child = super;
                super->parent = super->child;
            }
        }
    } else {
        super->spriteRendering.b3 = 1;
    }
    InitializeAnimation(super, super->type);
    EvilSpirit_Action1(this);
}

void EvilSpirit_Action1(EvilSpiritEntity* this) {
    s32 sVar3;
    u32 dir;
    s16 iVar5;

    if (super->type != 0) {
        if (((EvilSpiritEntity*)super->child)->unk7f == 0) {
            this->unk76 = this->unk7c;
            this->unk7a = this->unk7c;
            super->speed = 0x300;
            super->direction = CalculateDirectionFromOffsets(super->parent->x.WORD - super->x.WORD,
                                                             super->parent->y.WORD - super->y.WORD) ^
                               0x80;
        } else {
            super->speed = 0x600;
            dir = CalculateDirectionFromOffsets(gPlayerEntity.base.x.WORD - super->x.WORD,
                                                gPlayerEntity.base.y.WORD - super->y.WORD) ^
                  0x80;
            if (dir != super->direction) {
                if ((u8)(dir - super->direction) > 0x80) {
                    super->direction += 3;
                } else {
                    super->direction -= 3;
                }
            }
            if ((gPlayerEntity.base.animationState & 2) == 0) {
                this->unk76 = this->unk7c + 0x40;
            } else {
                this->unk76 = this->unk7c - 0x20;
                this->unk7a = this->unk7c + 0x50;
                ;
            }
        }
        super->x = super->parent->x;
        super->y = super->parent->y;
        LinearMoveAngle(super, (int)super->speed, super->direction);
        return;
    }

    if ((super->contactFlags & 0x7f) == 0x13) {
        super->direction++;
        super->gustJarTolerance--;
        this->unk7f = 1;
        if ((gPlayerEntity.base.animationState & 2) == 0) {
            this->unk76 = this->unk7c + 0x10;
        } else {
            this->unk76 = this->unk7c - 0x20;
            this->unk7a = this->unk7c + 0x30;
        }
    } else {
        super->direction = super->direction + 2;
        super->gustJarTolerance = 0xf0;
        this->unk7f = 0;
        this->unk76 = this->unk7c;
        this->unk7a = this->unk7c;
    }

    if (super->gustJarTolerance == 0) {
        super->action = 2;
        this->unk7f = 0;
        return;
    }

    if ((super->direction + 0x40) * 0x1000000 >= 0) {
        sVar3 = this->unk76;
        if ((short)this->unk76 >= 1) {
            this->unk76 = -sVar3;
        }
    } else {
        sVar3 = this->unk76;
        if (-1 >= (short)this->unk76) {
            this->unk76 = -sVar3;
        }
    }

    sVar3 = FixedMul(gSineTable[super->direction], 0x2000);
    iVar5 = FixedDiv(sVar3, 0x100);
    super->x.WORD = this->x + (iVar5 << 8);
    sVar3 = FixedMul(gSineTable[super->direction + 0x40], 0x1000);
    iVar5 = FixedDiv(sVar3, 0x100);
    super->y.WORD = this->y - (iVar5 << 8);
}

void EvilSpirit_Action2(EvilSpiritEntity* this) {
    u32 index;

    if ((super->contactFlags & 0x7f) != 0x13) {
        super->action = 3;
    } else {
        if (sub_0806F3E4(super)) {
            SetLocalFlag(SORA_ELDER_RECOVER);
            SetRoomFlag(0);

            for (index = 0; index < 4; index++) {
                Entity* ent = super->child;
                super->child = ent->parent;
                DeleteEntity(ent);
            }
            DeleteThisEntity();
        }
    }
}

void EvilSpirit_Action3(EvilSpiritEntity* this) {
    short sVar2;
    short iVar4;
    int iVar6;

    super->direction = CalculateDirectionFromOffsets(this->x - super->x.WORD, this->y - super->y.WORD);
    if ((super->contactFlags & 0x7f) == 0x13) {
        super->speed = 0x100;
        super->gustJarTolerance--;
        this->unk7f = 1;

        if ((gPlayerEntity.base.animationState & 2) == 0) {
            this->unk76 = this->unk7c + 0x10;
        } else {
            this->unk76 = this->unk7c - 0x20;
            this->unk7a = this->unk7c + 0x30;
        }
    } else {
        super->speed = 0x200;
        super->gustJarTolerance = 0xf0;
        this->unk7f = 0;
        this->unk76 = this->unk7c;
        this->unk7a = this->unk7c;
    }

    if (super->gustJarTolerance == 0) {
        super->action = 2;
        this->unk7f = 0;
    } else {
        LinearMoveAngle(super, super->speed, super->direction);
        super->direction ^= 0x80;
        sVar2 = FixedMul(gSineTable[super->direction], 0x2000);
        iVar6 = this->x + (FixedDiv(sVar2, 0x100) << 8);
        sVar2 = FixedMul(gSineTable[super->direction + 0x40], 0x1000);
        if (EntityWithinDistance(super, iVar6, this->y - (FixedDiv(sVar2, 0x100) << 8), 2)) {
            super->action = 1;
        }
    }
}
