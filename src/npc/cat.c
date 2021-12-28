#include "global.h"
#include "entity.h"
#include "functions.h"
#include "save.h"
#include "message.h"
#include "npc.h"

extern void sub_08067C44();

extern void (*gCat[9])(Entity*);

extern Dialog gUnk_08110EF8;

extern Hitbox gUnk_08110EF0;
extern void sub_08067B08(Entity*);

extern u32 sub_08067D20();
extern void sub_08067AAC(Entity*);
extern void sub_08067B34(Entity*);
extern void sub_08067B80(Entity*, u32);

extern void sub_08067B70(Entity*);

extern void sub_08067C24(Entity*);
extern void sub_08067BD4(Entity*);
extern u32 sub_08067D74(Entity*);
extern void sub_08067C18(Entity*);

extern Hitbox* gUnk_08111154[8];
extern void sub_08067DDC(Entity*);

extern u16 gUnk_081110FC[4];
extern void sub_08067DCC(Entity*, u32);

extern u8 gUnk_0811110C[2];
extern u32 gUnk_0811110F;
extern void sub_08078850(Entity*, u32, u8, u32*);

extern u16 gUnk_08111104[];

extern u32 sub_0806FCA0(Entity*, Entity*);

extern Entity* sub_08049DF4(u32);

void sub_08067790(Entity* this) {
    ShowNPCDialogue(this, &gUnk_08110EF8 + this->type * 10 + gSave.global_progress);
}

// Main
void Cat(Entity* ent) {
    gCat[ent->action](ent);
    sub_08067C44(ent);
    if (((ent->flags & 128) == 0) && (ent->type != 5)) {
        sub_0806ED78(ent);
    }
}

void sub_080677EC(Entity* this) {
    u32 uVar2;

    this->spriteSettings.draw = 1;
    this->direction = 8;
    this->speed = 0x80;
    this->field_0x3c = 7;
    this->hurtType = 0x48;
    this->hitType = -0x58;
    this->flags2 = 1;
    this->field_0x68.HALF.HI = 0xff;
    if (this->x.HALF.HI < gPlayerEntity.x.HALF.HI) {
        this->spriteSettings.flipX = 1;
    } else {
        this->spriteSettings.flipX = 0;
    }

    this->field_0x68.HALF.LO = sub_0801E99C(this);
    this->hitbox = &gUnk_08110EF0;
    uVar2 = sub_0805ACC0(this);
    if (uVar2 == 0) {
        uVar2 = this->x.HALF.HI;
    } else {
        uVar2 >>= 0x10;
    }
    this->field_0x6c.HWORD = uVar2;
    this->field_0x6e.HWORD = this->actionDelay + uVar2;
    this->actionDelay = 0;
    this->field_0x74.HALF.HI = 0;
    this->field_0x74.HALF.LO = (Random() & 0x7f) + 0x1e;
    this->field_0x68.HALF.HI = 0xff;
    sub_08067B08(this);
}

void sub_080678AC(Entity* this) {
    u32 iVar1;
    u16* psVar2;

    iVar1 = sub_08067D20(this);
    if (iVar1 != 0) {
        sub_08067B80(this, 5);
    } else {
        psVar2 = (u16*)&this->field_0x70.HALF.HI;
        if (*psVar2 != 0) {
            *psVar2 = *psVar2 - 1;
        }
        if ((this->frame == 1) && (*psVar2 == 0)) {
            sub_08067AAC(this);
        } else {
            UpdateAnimationSingleFrame(this);
            if ((this->frame & 0x80) != 0) {
                sub_08067B34(this);
            }
        }
    }
}

void sub_08067904(Entity* this) {
    if (sub_08067D20(this) != 0) {
        sub_08067B80(this, 8);
        return;
    }

    this->field_0x70.HALF.HI -= 1;
    if (this->field_0x70.HALF.HI == 0) {
        sub_08067B70(this);
        return;
    }
    if (this->direction == 8) {
        if (this->x.HALF.HI > this->field_0x6e.HWORD) {
            this->direction = 0x18;
            this->spriteSettings.flipX = 0;
        }
    } else {
        if (this->x.HALF.HI < this->field_0x6c.HWORD) {
            this->direction = 8;
            this->spriteSettings.flipX = 1;
        }
    }
    LinearMoveUpdate(this);
    UpdateAnimationSingleFrame(this);
}

void sub_0806797C(Entity* this) {
    UpdateAnimationSingleFrame(this);
    if (this->frame & 0x80) {
        sub_08067B08(this);
    }
}

void sub_0806799C(Entity* this) {
    UpdateAnimationSingleFrame(this);
    if ((gMessage.doTextBox & 0x7f) == 0) {
        sub_08067B08(this);
        SetDefaultPriority(this, PRIO_PLAYER);
    }
}

void sub_080679C4(Entity* this) {
    if (this->field_0x74.HALF.LO == 0 || --this->field_0x74.HALF.LO == 0 || sub_08067D20(this) == 0) {
        sub_08067C24(this);
    } else {
        UpdateAnimationSingleFrame(this);
        sub_08067BD4(this);
        if (sub_08067D74(this) != 0) {
            sub_08067C18(this);
        }
    }
}

void sub_08067A0C(Entity* this) {
    u8 tmp;

    UpdateAnimationSingleFrame(this);
    if (this->frame & 0x80) {
        if (sub_08067D20(this) != 0) {
            sub_08067B80(this, 5);
            this->actionDelay = this->actionDelay + 0x14;
        } else {
            sub_08067C24(this);
        }
    } else {
        tmp = (this->frame & 7);
        if (tmp != 0) {
            COLLISION_ON(this);
            this->hitbox = gUnk_08111154[tmp - 1 + ((this->spriteSettings.flipX << 2))];
        } else {
            sub_08067DDC(this);
        }
    }
}

void sub_08067A78(Entity* this) {
    UpdateAnimationSingleFrame(this);
    if (this->frame & 0x80) {
        sub_08067AAC(this);
    }
}

void sub_08067A98(Entity* this) {
    if (UpdateFuseInteraction(this) != 0) {
        sub_08067B08(this);
    }
}

void sub_08067AAC(Entity* this) {
    this->action = 2;
    this->field_0x70.HALF.HI = gUnk_081110FC[(Random() & 3)];

    this->spriteSettings.flipX = this->direction >> 4 ^ 1;

    sub_08067DCC(this, 3);
    sub_08078850(this, 0, gUnk_0811110C[2], &gUnk_0811110F);
}

void sub_08067B08(Entity* this) {
    this->action = 1;
    this->field_0x70.HALF.HI = gUnk_08111104[Random() & 3];
    sub_08067B34(this);
}

void sub_08067B34(Entity* this) {
    sub_08067DCC(this, 0);
    this->frameDuration = (Random() & 0x30) + 0xb4;
    sub_08078850(this, 0, gUnk_0811110C[this->spriteSettings.flipX], &gUnk_0811110F);
}

void sub_08067B70(Entity* this) {
    this->action = 3;
    sub_08067DCC(this, 4);
}

void sub_08067B80(Entity* this, u32 param) {
    this->action = 5;
    this->actionDelay = 0x14;
    this->field_0x74.HALF.LO = (Random() & 0x7f) + 0x1e;
    InitAnimationForceUpdate(this, param);
    sub_08067DDC(this);
    if (this->x.HALF.HI < gPlayerEntity.x.HALF.HI) {
        this->spriteSettings.flipX = 1;
    } else {
        this->spriteSettings.flipX = 0;
    }
}

void sub_08067BD4(Entity* this) {
    if (this->spriteSettings.flipX > 0) {
        if (this->x.HALF.HI - 4 > gPlayerEntity.x.HALF.HI) {
            this->spriteSettings.flipX = 0;
        }
    } else {
        if (this->x.HALF.HI + 4 < gPlayerEntity.x.HALF.HI) {
            this->spriteSettings.flipX = 1;
        }
    }
}

void sub_08067C18(Entity* this) {
    this->action = 6;
    InitAnimationForceUpdate(this, 6);
}

void sub_08067C24(Entity* this) {
    this->action = 7;
    this->field_0x74.HALF.HI = 0x14;
    sub_08067DDC(this);
    InitAnimationForceUpdate(this, 7);
}

void sub_08067C44(Entity* this) {
    s32 iVar4;
    u32 uVar5;

    uVar5 = -((s32) - (gPlayerState.flags & PL_MINISH) >> 0x1f);
    if (uVar5 != this->field_0x68.HALF.HI) {
        if (uVar5 == 0) {
            sub_08078778(this);
        } else {
            sub_080787A8(this, this->field_0x68.HALF.LO);
        }
    }

    this->field_0x68.HALF.HI = uVar5;

    if (this->interactType == 0) {
        return;
    }

    iVar4 = sub_0806FCA0(this, &gPlayerEntity);
    switch (this->animIndex) {
        case 0:
        default:
            if (iVar4 == 2) {
                InitAnimationForceUpdate(this, 2);
            } else {
                InitAnimationForceUpdate(this, 1);
            }
            break;
        case 3:
            if (iVar4 == 1) {
                this->spriteSettings.flipX = 1;
            } else {
                if (this->spriteSettings.flipX == 3) { // TODO 3 ???
                    this->spriteSettings.flipX = 0;
                }
            }
            if (iVar4 != 2) {
                InitAnimationForceUpdate(this, 1);
            } else {
                InitAnimationForceUpdate(this, 2);
            }
            break;
    }

    if (this->interactType == 2) {
        this->action = 8;
        sub_0806F118(this);
    } else {
        this->action = 4;
        sub_08067790(this);
        SetDefaultPriority(this, PRIO_MESSAGE);
    }
    this->interactType = 0;
    SoundReq(SFX_VO_CAT);
}

u32 sub_08067D20(Entity* this) {
    s32 tmp;
    Entity* entity;
    int iVar4;
    if (this->field_0x74.HALF.HI != 0) {
        this->field_0x74.HALF.HI -= 1;
    } else {
        entity = sub_08049DF4(2);
        if (entity != NULL) {
            iVar4 = this->spriteSettings.flipX ? 0x10 : 0x28;
            if (((u32)(entity->x.HALF.HI - (this->x.HALF.HI - iVar4)) < 0x31) &&
                ((((u32)entity->y.HALF.HI) - (this->y.HALF.HI - 4)) < 0x39)) {
                return 1;
            }
        }
    }
    return 0;
}

u32 sub_08067D74(Entity* this) {
    Entity* entity;
    int iVar2;

    if (this->type != 5) {
        if (this->actionDelay != 0) {
            this->actionDelay -= 1;
        }
        entity = sub_08049DF4(2);
        if (entity != NULL) {
            iVar2 = this->spriteSettings.flipX ? 0x8 : 0x18;
            if ((((u32)(entity->x.HALF.HI - (this->x.HALF.HI - iVar2)) < 0x1f) &&
                 ((u32)(entity->y.HALF.HI - this->y.HALF.HI) < 0x17)) &&
                (this->actionDelay == 0)) {
                return 1;
            }
        }
    }
    return 0;
}

void sub_08067DCC(Entity* this, u32 param) {
    this->field_0x70.BYTES.byte1 = param;
    InitAnimationForceUpdate(this, param);
}

void sub_08067DDC(Entity* this) {
    COLLISION_OFF(this);
    this->bitfield = 0;
    this->iframes = 0;
    this->hitbox = &gUnk_08110EF0;
}

void Cat_Fusion(Entity* this) {
    if (this->action == 0) {
        this->action += 1;
        this->spriteSettings.draw = 1;
        InitAnimationForceUpdate(this, 5);
    } else {
        UpdateAnimationSingleFrame(this);
    }
}
