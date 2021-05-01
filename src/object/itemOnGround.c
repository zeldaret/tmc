#include "global.h"
#include "audio.h"
#include "entity.h"
#include "flags.h"
#include "functions.h"
#include "player.h"

void sub_08081150(Entity*);
u8 sub_0808147C(u32);
void sub_080814A4(Entity*);
u32 sub_080814C0(Entity*);
void sub_08081500(Entity*);
void sub_0808153C(Entity*);
void sub_08081598(Entity*);
void sub_080813BC(Entity*);
void sub_080810FC(Entity*);
bool32 CheckShouldPlayItemGetCutscene(Entity*);

extern u32 sub_080002D0(Entity*);
extern u32 sub_080177A0(Entity*, Entity*);
extern void GiveItem(u32, u32);
extern u32 sub_0805E40C(Entity*);

extern void (*const gUnk_0811E7D4[])(Entity*);
extern void (*const gUnk_0811E7E8[])(Entity*);
extern void (*const gUnk_0811E814[])(Entity*);
extern void (*const gUnk_0811E840[])(Entity*);
extern Hitbox gUnk_080FD1A8;

typedef struct {
    u8 unk0[3];
    u8 unk3;
    u8 unk4[4];
} Unk_080FD5B4;

extern const Unk_080FD5B4 gUnk_080FD5B4[];

typedef struct {
    u8 unk0[2];
    u16 sfx;
    u8 unk4;
    u8 unk5[3];
} Unk_0811E84C;

extern const Unk_0811E84C gUnk_0811E84C[];

void ItemOnGround(Entity* this) {
    if (this->bitfield & 0x80) {
        switch (this->bitfield & 0x7F) {
            case 20:
                this->action = 3;
                this->flags &= 0x7F;
                this->spriteSettings.b.draw = 1;
                this->field_0x3c |= 0x10;
                this->attachedEntity = this->field_0x4c;
                break;
            case 0:
            case 1:
            case 4:
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 30:
                sub_08081598(this);
                break;
        }
    }

    if (sub_0806F520(this)) {
        sub_080813BC(this);
    } else {
        gUnk_0811E7D4[this->action](this);
    }

    if (this->type == 0x5C) {
        gRoomVars.field_0x4++;
    }

    sub_08080CB4(this);
}

void sub_08080F20(Entity* this) {
    if (this->field_0x86.HWORD && CheckFlags(this->field_0x86.HWORD)) {
        DeleteThisEntity();
    }

    if (this->type != 0x60) {
        this->spriteSettings.b.draw = 1;
        this->spritePriority.b1 = 3;
        this->spriteSettings.b.shadow = 0;
        this->damageType = 7;
        this->field_0x3c = 0x47;
        this->field_0x40 = 0x44;
        this->currentHealth = 0xFF;
        this->hitbox = &gUnk_080FD1A8;
        switch (this->type - 0x3F) {
            case 0:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 29:
            case 30:
            case 31:
            case 32:
                this->flags2 = 0x17;
                break;
            default:
                this->flags2 = 0x11;
                break;
        }

        this->field_0x68.HALF.HI = this->actionDelay;
        this->field_0x6a.HALF.LO = 0;
        this->field_0x6c.HWORD = 0;
        this->field_0x68.HALF.LO = 0;
        this->actionDelay = 0;
        sub_0805E3A0(this, 3);
        this->field_0x1c = sub_0808147C(this->type);
        gUnk_0811E7E8[this->field_0x68.HALF.HI](this);
    } else {
        Entity* entity = CreateObject(0x40, 0x60, 0);
        if (entity) {
            entity->actionDelay = 0;
            if (this->actionDelay == 1) {
                entity->type2 = 2;
            }

            CopyPosition(this, entity);
            DeleteThisEntity();
        }
    }
}

void sub_080810A8(Entity* this) {
    this->action = 1;
    sub_080814A4(this);
    if (this->direction & 0x80) {
        this->direction &= 0x1F;
        if (this->speed == 0) {
            this->speed = 0x100;
        }
    } else {
        this->direction |= 0xFF;
    }

    if (this->field_0x20 == 0) {
        this->field_0x20 = 0x1E000;
    }

    if (this->collisionLayer == 2) {
        sub_08016A30(this);
    }
}

void sub_080810FC(Entity* this) {
    if (this->type != 0x5F) {
        sub_08081598(this);
    } else {
        this->action = 2;
        this->subAction = 0;
        this->flags |= 0x80;
        this->flags2 = 0x11;
        CopyPosition(&gPlayerEntity, this);
    }
}

void sub_08081134(Entity* this) {
    sub_080814A4(this);
    this->field_0x6c.HWORD += 80;
    sub_08081150(this);
}

void sub_08081150(Entity* this) {
    this->action = 2;
    this->flags |= 0x80;
    this->height.HALF.HI = -0x80;
    this->spriteOrientation.flipY = 1;
    this->spriteRendering.b3 = 1;
    SoundReq(SFX_12D);
}

void sub_08081188(Entity* this) {
    this->action = 2;
    this->flags |= 0x80;
    if (this->collisionLayer == 2) {
        sub_08016A30(this);
    }
}

void sub_080811AC(Entity* this) {
    this->action = 2;
    this->spriteSettings.b.draw = 0;
    this->field_0x6e.HWORD = GetTileTypeByEntity(this);
}

void sub_080811C8(Entity* this) {
    this->action = 2;
    this->spriteSettings.b.draw = 0;
}

void sub_080811D8(Entity* this) {
    sub_08081188(this);
    SoundReq(SFX_215);
}

void sub_080811EC(Entity* this) {
    if (this->field_0x68.HALF.HI != 6) {
        sub_080AEFE0(this);
    } else {
        sub_0806F69C(this);
    }

    sub_08003FC4(this, 0x2800);
    if (this->field_0x20 <= 0) {
        this->action = 2;
        this->flags |= 0x80;
        sub_080814A4(this);
    }
}

void sub_0808122C(Entity* this) {
    gUnk_0811E814[this->field_0x68.HALF.HI](this);
}

void sub_08081248(Entity* this) {
    sub_08081500(this);
    if (sub_080814C0(this)) {
        sub_08081404(this, 0);
    } else {
        sub_0800442E(this);
    }
}

void sub_0808126C(Entity* this) {
    UpdateAnimationSingleFrame(this);
    sub_0808153C(this);
}

void sub_0808127C(Entity* this) {
    if (sub_080814C0(this)) {
        sub_08081404(this, 0);
    } else {
        sub_0808153C(this);
    }
}

void nullsub_113(Entity* this) {
}

void sub_080812A0(Entity* this) {
    sub_08081500(this);
}

void sub_080812A8(Entity* this) {
    if (sub_080002D0(this) != 0xF && this->field_0x6e.HWORD != GetTileTypeByEntity(this)) {
        this->direction = 0;
        this->speed = 0;
        this->spriteSettings.b.draw = 1;
        this->field_0x68.HALF.HI = 0;
        sub_080810A8(this);
    }
}

void sub_080812E8(Entity* this) {
    PlayerState* playerState = &gPlayerState;
    if ((playerState->swimState & 0x80) && !(playerState->flags.all & 0x80) && sub_080177A0(this, &gPlayerEntity)) {
        sub_080810FC(this);
    }
}

void nullsub_510(Entity* this) {
}

void sub_08081328(Entity* this) {
    Entity* other = this->attachedEntity;
    if (!(other->kind == 8 && other->id == 3)) {
        sub_08081404(this, 0);
    } else {
        CopyPosition(other, this);
        this->height.HALF.HI--;
        other = &gPlayerEntity;
        if (sub_080177A0(this, other)) {
            sub_080810FC(this);
        }
    }
}

void sub_0808136C(Entity* this) {
    if (--this->actionDelay) {
        Entity* other = this->attachedEntity;
        this->x.WORD = other->x.WORD;
        this->y.WORD = other->y.WORD;
        this->spriteOrientation.flipY = other->spriteOrientation.flipY;
        this->spriteRendering.b3 = other->spriteRendering.b3;
        sub_08003FC4(this, 0x2800);
    } else {
        sub_08081404(this, 1);
    }
}

void sub_080813BC(Entity* this) {
    gUnk_0811E840[this->subAction](this);
}

void sub_080813D4(Entity* this) {
    this->subAction = 1;
    this->field_0x1d = 1;
    this->spriteSettings.b.draw = 1;
}

void sub_080813E8(Entity* this) {
    sub_0806F4E8(this);
}

void sub_080813F0(Entity* this) {
    if (sub_0806F3E4(this)) {
        sub_080810FC(this);
    }
}

void sub_08081404(Entity* this, u32 arg1) {
    if (arg1 && this->field_0x86.HWORD) {
        SetFlag(this->field_0x86.HWORD);
    }

    DeleteThisEntity();
}

bool32 sub_08081420(Entity* this) {
    if (CheckShouldPlayItemGetCutscene(this)) {
        sub_0805E3A0(this, 6);
        CreateItemEntity(this->type, this->type2, 0);
        return TRUE;
    } else {
        GiveItem(this->type, this->type2);
        return FALSE;
    }
}

bool32 CheckShouldPlayItemGetCutscene(Entity* this) {
    bool32 result = FALSE;
    if ((gUnk_080FD5B4[this->type].unk0[3] & 0x2) || !GetInventoryValue(this->type)) {
        result = TRUE;
    }
    return result;
}

u8 sub_0808147C(u32 arg0) {
    const Unk_0811E84C* var0 = &gUnk_0811E84C[arg0];
    return var0->unk4;
}

void sub_0808148C(u32 arg0) {
    const Unk_0811E84C* var0 = &gUnk_0811E84C[arg0];
    if (var0->sfx) {
        SoundReq(var0->sfx);
    }
}

void sub_080814A4(Entity* this) {
    if (this->field_0x68.HALF.HI == 10) {
        this->field_0x6c.HWORD = 120;
    } else {
        this->field_0x6c.HWORD = 600;
    }
}

u32 sub_080814C0(Entity* this) {
    if (!sub_0805E40C(this)) {
        if (--this->field_0x6c.HWORD == 0) {
            return TRUE;
        }

        if (this->field_0x6c.HWORD < 90) {
            this->spriteSettings.b.draw ^= 1;
        }
    }

    return FALSE;
}

void sub_08081500(Entity* this) {
    if (this->field_0x68.HALF.LO == 0) {
        u32 var0 = sub_080044EC(this, 0x2800);
        if (var0 == 0) {
            this->field_0x68.HALF.LO = 1;
        } else {
            if (var0 == 1) {
                sub_0808148C(this->type);
                UpdateSpriteForCollisionLayer(this);
            }

            sub_080AEFE0(this);
        }
    }
}

void sub_0808153C(Entity* this) {
    if (this->field_0x68.HALF.LO > 1)
        return;

    if (this->field_0x68.HALF.LO == 0) {
        if (!sub_08003FC4(this, 0x1000) && !sub_0800442E(this)) {
            this->field_0x68.HALF.LO = 1;
            this->field_0x20 = 0x1E000;
            sub_0808148C(this->type);
            UpdateSpriteForCollisionLayer(this);
        }
    } else {
        if (!sub_08003FC4(this, 0x2800)) {
            this->field_0x68.HALF.LO = 2;
            sub_0808148C(this->type);
        }
    }
}

void sub_08081598(Entity* this) {
    if (this->currentHealth == 0) {
        sub_08081404(this, 1);
    }

    this->flags &= 0x7F;
    this->action = 4;
    this->actionDelay = 14;
    this->field_0x20 = 0x20000;
    this->spriteSettings.b.draw = 1;
    this->spritePriority.b1 = 2;
    this->spritePriority.b0 = 3;
    this->attachedEntity = &gPlayerEntity;
    CopyPosition(this->attachedEntity, this);
    this->height.HALF.HI -= 4;
    if (this->type != 0x5F && sub_08081420(this)) {
        sub_08081404(this, 1);
    }
}
