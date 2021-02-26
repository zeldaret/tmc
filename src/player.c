#include "global.h"
#include "entity.h"
#include "player.h"
#include "textbox.h"
#include "functions.h"
#include "readKeyInput.h"
#include "area.h"
#include "save.h"

extern const void (*const gUnk_0811B9E0[])(Entity*);
extern const void (*const gUnk_0811BA60[])(Entity*);
extern const void (*const gUnk_0811BA68[])(Entity*);
extern const void (*const gUnk_0811BA74[])(Entity*);
extern const void (*const gUnk_0811BA7C[])(Entity*);
extern const void (*const gUnk_0811BA88[])(Entity*);
extern const void (*const gUnk_0811BA94[])(Entity*);
extern const void (*const gUnk_0811BA9C[])(Entity*);

extern void sub_08079458();
extern void sub_080797EC();
extern void sub_08079E08();
extern void sub_08078F60();

extern BoundingBox gUnk_08114F88;

// inject
void sub_08070680(Entity* this) {
    gUnk_0811B9E0[this->action](this);
}

void sub_08070698(Entity* this) {
    Entity* ent;

    gPlayerState.field_0x0[0] = 0xff;
    gPlayerState.field_0x16[0] = gPlayerEntity.x.HALF.HI;
    gPlayerState.field_0x16[1] = gPlayerEntity.y.HALF.HI;
    this->flags = this->flags | 0x80;
    this->spritePriority.b0 = 0xc;
    this->spritePriority.b1 = 1;
    this->spriteSettings.b.shadow = 1;
    this->field_0x16 = 0x20;
    this->flags2 = 8;
    this->damageType = 0x79;
    this->boundingBox = &gUnk_08114F88;
    this->spriteIndex = 1;
    gPlayerState.field_0x8 = 0x100;
    sub_0806FDA0(this);
    sub_080AE008(this, 1, 2);
    InitAnimationForceUpdate(this, 2);
    if (this->collisionLayer == 0) {
        sub_08016A30(this);
    }

    if (IsItemEquipped(0x10) != 2) {
        sub_08077728();
    }
    sub_0807A108();
    sub_0807AEE4();

    if (sub_08078EFC() == 0) {
        sub_0807921C();
        sub_0807A1B8();
        if (gPlayerState.swimState != 0) {
            gPlayerState.swimState = 1;
            sub_08079938();
            gPlayerState.field_0xa8 = 7;
            sub_0807ACCC(this);
            ent = FindEntityInListByForm(0x6, 0xf, 0x6, 0xb, 0x0);
            if (ent != NULL) {
                DeleteEntity(ent);
            }
        }
    }
}

// PlayerState.flags need to be 100% before this one can reasonably be done
NONMATCH("asm/non_matching/player/sub_08070794.s", void sub_08070794(Entity* this)) {
}
END_NONMATCH

void sub_08070BEC(Entity* this, u32 r0) {
    if (r0 & 1)
        sub_080797EC();
    else
        sub_08079938();

    if (r0 & 2)
        sub_08079E08();
}

void sub_08070C10(Entity* this) {
    gPlayerState.field_0xd[0] = 0xFF;
    gPlayerState.pushedObject = 0x80;
    gPlayerState.field_0xa8 = 10;

    gUnk_0811BA60[this->previousActionFlag](this);
}

void sub_08070C3C(Entity* this) {
    sub_08004168(this);

    gPlayerState.flags.all |= 0x1 | 0x4;
    gPlayerState.flags.all &= ~0x400;

    gPlayerState.jumpStatus = 0;

    if ((gPlayerState.flags.all & 0x80) != 0)
        gPlayerState.field_0x8 = 0x1ba;
    else if ((gPlayerState.flags.all & 8) != 0)
        gPlayerState.field_0x8 = 0x458;
    else
        gPlayerState.field_0x8 = 0x1b8;

    this->previousActionFlag++;
    this->flags &= ~0x80;
    this->spritePriority.b1 = 0;
    ResetPlayer();
    sub_0807A108();
    SoundReq(0x7b);
    SoundReq(0x85);
}

void sub_08070CB4(Entity* this) {
    UpdateAnimationSingleFrame(this);
    if ((this->frames.all & 0x80) != 0) {
        if ((gSave.stats.health != 0) && ((gPlayerState.flags.all & 0x8000) != 0)) {
            gPlayerState.flags.all &= ~(0x1 | 0x4);
            this->spriteSettings.b.draw = 0;
        } else {
            gPlayerState.flags.all &= ~(0x4 | 0x8000);
            sub_08079458();
            gPlayerState.field_0xa = 0;
            this->hurtBlinkTime = 0x20;
            ModHealth(-2);
        }
    }
}

void sub_08070D20(Entity* this) {
    gUnk_0811BA68[this->previousActionFlag](this);
}

void sub_08070D38(Entity* this) {
    this->flags &= ~0x80;
    this->direction = ((this->animationState & 0xe) << 2) ^ 0x10;
    this->nonPlanarMovement = 0x100;
    this->field_0x42 = 0;
    this->previousActionFlag++;
    this->actionDelay = gPlayerState.field_0x38;
    this->spriteIndex = 1;

    if ((gPlayerState.flags.all & 0x80) == 0) {
        this->field_0x20 = 0x20000;
        gPlayerState.field_0x8 = 0x114;
        sub_08080964(16, 0);
    } else {
        gPlayerState.field_0x8 = 0xc18;
        this->field_0x20 = 0x18000;
    }

    gPlayerState.jumpStatus = 0x80;
    SoundReq(0x14c);
    ResetPlayer();
    sub_08078F60();
}

// minor regalloc
NONMATCH("asm/non_matching/player/sub_08070DC4.s", void sub_08070DC4(Entity* this)) {
    UpdateAnimationSingleFrame(this);
    sub_080085B0(this);
    sub_08079E08();
    sub_0807A1B8();

    if (sub_08078EFC() || sub_08003FC4(this, 0x2000))
        return;

    gPlayerState.jumpStatus = 0;

    if (sub_08078EFC() || sub_08079D48())
        return;

    if (gPlayerState.swimState != 0) {
        gPlayerState.jumpStatus = 0;
        sub_080791D0();
        return;
    }

    if (--this->actionDelay != 0xFF) {
        this->field_0x20 = 0x10000;
        return;
    }

    this->flags |= 0x80;

    if ((gPlayerState.field_0x14 == 0) && sub_08008B22()) {
        gPlayerState.field_0x10[1] = 7;
        sub_08079938();
        sub_080791BC();
        return;
    }

    this->spriteIndex = 1;
    this->actionDelay = 8;
    this->previousActionFlag++;

    if ((gPlayerState.flags.all & 0x80) == 0)
        gPlayerState.field_0x8 = 0x100;
}
END_NONMATCH

void sub_08070E7C(Entity* this) {
    u8 timer = --this->actionDelay;

    if (timer == 0) {
        gPlayerState.jumpStatus = timer;
        sub_080791D0();
    }
}

void sub_08070E9C(Entity* this) {
    if (sub_08078EFC() != 0) {
        sub_08056360();
    } else {
        gPlayerState.field_0x27[0] = 4;
        gPlayerState.field_0xa8 = 0x13;
        sub_0807A1B8();
        gUnk_0811BA74[this->previousActionFlag](this);
    }
}

void sub_08070EDC(Entity* this) {
    this->scriptedScene = 2;

    if ((gTextBox.doTextBox & 0x7f) != 0)
        this->previousActionFlag = 1;

    if ((gPlayerState.flags.all & 0x80) == 0)
        sub_08079938();
    else
        gPlayerState.field_0x8 = 0xc18;
}

void sub_08070f24(Entity* this) {
    UpdateAnimationSingleFrame(this);
    if ((gTextBox.doTextBox & 0x7f) == 0) {
        this->scriptedScene = this->scriptedScene2;
        sub_080791D0();
    }
}

void sub_08070F50(Entity* this) {
    Entity* child;
    u8* temp; // todo: retype

    gPlayerState.field_0xa8 = 0x15;
    this->flags &= ~(0x80);
    gUnk_0811BA7C[this->previousActionFlag](this);

    child = this->attachedEntity;
    if (child != NULL) {
        PositionEntityOnTop(this, child);
        temp = GetSpriteSubEntryOffsetDataPointer((u16)this->spriteIndex, this->frameIndex);
        child->spriteOffsetX = *temp;
        child->spriteOffsetY = temp[1];
    }
}

void sub_08070FA4(Entity* this) {
    u16 temp;

    this->spriteSettings.b.flipX = FALSE;
    this->animationState = 4;

    gPlayerState.flags.all |= 1;
    gPlayerState.jumpStatus = 0;

    if ((gPlayerState.flags.all & 0x80) == 0) {
        if ((gPlayerState.flags.all & 0x8) != 0) {
            if (sub_080542AC(gPlayerState.field_0x38)) {
                temp = 0x45e;
            } else {
                temp = 0x45b;
            }
        } else {
            if (sub_080542AC(gPlayerState.field_0x38)) {
                temp = 0x2e0;
            } else {
                temp = 0x1b9;
            }
        }
        gPlayerState.field_0x8 = temp;
    }

    this->previousActionFlag = 1;
    ResetPlayer();
    sub_08078F60();
}

void sub_08071020(Entity* this) {
    UpdateAnimationSingleFrame(this);
    if (this->frames.all != 0) {
        this->previousActionFlag = 2;
    }
}

void sub_08071038(Entity* this) {

    UpdateAnimationSingleFrame(this);

    if (sub_08078EFC() || (gTextBox.doTextBox & 0x7f))
        return;

    if ((this->frames.all & 0x80) != 0) {
        this->attachedEntity = 0;
        this->field_0x42 = 0;
        this->hurtBlinkTime = 0xf8;
        gPlayerState.jumpStatus = 0;
        sub_080791D0();
    }
}

void sub_08071084(Entity* this) {
    gPlayerState.field_0xa8 = 0xb;
    gUnk_0811BA88[this->previousActionFlag](this);
}

void sub_080710A8(Entity* this) {
    u32 temp;

    this->previousActionFlag++;

    gPlayerState.flags.all |= 1;
    gPlayerState.flags.all &= ~(0x400 | 0x800);

    gPlayerState.playerAction = 0;

    if ((gPlayerState.heldObject | gPlayerState.field_0x1a[1]) == 0) {
        if ((gPlayerState.flags.all & 0x80) == 0) {
            ResetPlayer();

            if ((gPlayerState.flags.all & 0x8) != 0) {
                gPlayerState.field_0x8 = 0x420;
            } else {
                gPlayerState.field_0x8 = 0x810;
            }
        }
    }

    gPlayerState.field_0x1d[1] = 0;
    this->direction = ((this->animationState & 0xe) << 2);

    temp = sub_08079FC4(1);
    asm("lsl r0, r0, #0x4");
    this->field_0x20 = (temp - 4) * 64 * 64;

    this->nonPlanarMovement = 0x100;
    sub_0807A108();
    SoundReq(0x7c);
    SoundReq(0x78);
}

void sub_08071130(Entity* this) {

    if (sub_08078EFC(this))
        return;

    if (gPlayerState.field_0x1a[1] == 0) {
        UpdateAnimationSingleFrame(this);

        if ((this->frames.all & 1))
            return;
    }

    sub_0806F69C(this);

    if (sub_08003FC4(this, 0x2000))
        return;

    gPlayerState.jumpStatus = 0;
    sub_0800455E(this);

    if (*(Entity**)&this->field_0x74 != NULL)
        sub_0800455E(*(Entity**)&this->field_0x74);

    sub_08008790(this, 7);

    if (gPlayerState.field_0x14)
        return;

    sub_0807A1B8();

    if (sub_08078EFC())
        return;

    if ((sub_08079D48() == 0) || (gPlayerState.swimState != 0)) {
        gPlayerState.jumpStatus = 0;
        sub_080791D0();
        return;
    }

    this->actionDelay = 6;

    if (((gPlayerState.heldObject | gPlayerState.keepFacing) == 0) && ((gPlayerState.flags.all & 0x80) == 0)) {
        if ((gPlayerState.flags.all & 0x8) != 0) {
            gPlayerState.field_0x8 = 0x424;
        } else {
            gPlayerState.field_0x8 = 0x820;
        }
        this->animIndex = 0xff;
    }

    this->previousActionFlag++;
    sub_08078F60();
    this->field_0x42 = 0;
    SoundReq(0x7d);
}

void sub_08071208(Entity* this) {
    if ((gPlayerState.heldObject | gPlayerState.keepFacing) == 0) {
        if ((gPlayerState.flags.all & 0x80) == 0) {
            UpdateAnimationSingleFrame(this);
        }
    }

    if (--this->actionDelay == 0xff) {
        gPlayerState.jumpStatus = 0;
        sub_080791D0();
    }
}

void sub_08071248(Entity* this) {
    gPlayerState.field_0xa8 = 0x16;
    gPlayerState.flags.all |= 4;
    this->flags &= ~0x80;
    gUnk_0811BA94[this->previousActionFlag](this);
}

void sub_0807127C(Entity* this) {
    this->previousActionFlag = 1;
    this->spritePriority.b1 = 0;

    if ((gPlayerState.flags.all & 0x80) != 0) {
        this->actionDelay = 0x3c;
        gPlayerState.field_0x8 = 0xc19;
        SoundReq(0x84);
    } else {
        if ((gPlayerState.flags.all & 0x10000) == 0) {
            sub_08004168(this);
        }

        CreateFx(this, 11, 0);

        if ((gPlayerState.flags.all & 8) == 0) {
            gPlayerState.field_0x8 = 0x72c;
        } else {
            gPlayerState.field_0x8 = 0x44c;
        }
    }
    ResetPlayer();
}

void sub_080712F0(Entity* this) {
    u32 temp;

    UpdateAnimationSingleFrame(this);

    temp = FALSE;

    if ((gPlayerState.flags.all & 0x80) != 0) {
        if (--this->actionDelay == 0)
            temp = TRUE;
    } else if ((this->frames.all & 0x80) != 0) {
        if (this->animIndex != 0xce)
            gPlayerState.field_0x8 = 0x2ce;
        else
            temp = TRUE;
    }

    if (temp == FALSE)
        return;

    this->field_0x42 = 0;
    this->hurtBlinkTime = 0x20;
    this->spritePriority.b1 = 1;
    this->spriteSettings.b.draw = FALSE;
    gPlayerState.flags.all &= ~(0x4);
    sub_08079458();
}

void sub_08071380(Entity* this) {
    gPlayerState.field_0xa8 = 0xe;
    gUnk_0811BA9C[this->previousActionFlag](this);

    if ((this->previousActionFlag == 7) || (this->previousActionFlag < 3))
        return;

    if ((gPlayerState.flags.all & 0x20) == 0)
        return;

    if ((gInput.newKeys & 0x102) == 0)
        return;

    if (CheckIsDungeon() || gArea.field_0x17 == 3) {
        this->previousActionFlag = 7;
        this->actionDelay = 30;
        DoFade(7, 16);
        SoundReq(0xf8);
    } else {
        sub_0804ACF8();
    }
}

void sub_08071400(Entity* this) {
    u16 x;
    u16 y;

    this->flags &= ~(0x80);
    this->field_0x42 = 0;

    x = gArea.field_0x12;
    y = gArea.field_0x14;

    if ((this->x.HALF.HI != x) || (this->y.HALF.HI != y)) {
        this->direction = sub_080045D4(this->x.HALF.HI, this->y.HALF.HI, gArea.field_0x12, gArea.field_0x14);
        this->nonPlanarMovement = 0x100;
        sub_08079E08();
    }

    sub_08073904(this);
    UpdateAnimationSingleFrame(this);

    if (gPlayerState.jumpStatus == 0) {
        gPlayerState.flags.all |= 0x20;
        this->previousActionFlag = 1;
        this->animationState = 4;
        this->spriteSettings.b.flipX = FALSE;
        if (gArea.field_0x17 == 4) {
            gPlayerState.field_0x8 = 0x52c;
        }
    }

    this->actionDelay = 8;

    if (gArea.field_0x17 != 3) {
        this->spritePriority.b0 = 3;
    }
}
