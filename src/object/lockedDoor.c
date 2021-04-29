#include "global.h"
#include "entity.h"
#include "flags.h"
#include "game.h"
#include "audio.h"
#include "functions.h"

extern void (* const gUnk_0811F65C[])(Entity*);

void LockedDoor(Entity* this) {
    gUnk_0811F65C[this->action](this);
}

extern u32 sub_080837B0(Entity*);
extern Hitbox gUnk_080FD170;
extern void sub_08083638(Entity*);
extern void sub_080836A0(Entity*);
extern u8 gUnk_0811F740[];
extern u32 sub_080001DA(u32, u32);
extern void sub_080836DC(Entity*, u32, u32);
extern void sub_08078850(Entity*, u32, u32, u32);

extern u32 sub_08083734(Entity*, u32);

extern void sub_08083814(Entity*, u32);

extern void sub_08083658(Entity*);

extern void sub_0805E4E0(Entity*, u32);

typedef struct PACKED {
    s8 x;
    s8 y;
} struct_0811F680;
extern const struct_0811F680 gUnk_0811F680[];
extern const struct_0811F680 gUnk_0811F688[];

extern const u16 gUnk_0811F690[];

typedef struct {
    struct_0811F680 unk_00;
    struct_0811F680 unk_02;
} struct_0811F730;

extern const struct_0811F730 gUnk_0811F730[];

void sub_08083338(Entity *this) {
    if (this->cutsceneBeh.HWORD != 0xFFFF && CheckFlags(this->cutsceneBeh.HWORD)) {
        DeleteThisEntity();
    }
    if (!sub_080837B0(this)) return;
    this->type2 = (this->type >> 2) & 3;
    this->frameIndex = this->type & 3;
    this->speed = 0x300;
    this->field_0x70.HALF.LO = this->x.HALF.HI;
    this->field_0x70.HALF.HI = this->y.HALF.HI;
    this->field_0x7c.BYTES.byte2 = this->type & 3;
    this->hitbox = &gUnk_080FD170;
    this->spritePriority.b0 = 5;
    this->frames.all = this->type & 0xF;
    this->field_0x76.HWORD = TILE(this->x.HALF.HI, this->y.HALF.HI);
    this->field_0x74.HWORD = sub_080001DA(this->field_0x76.HWORD, this->collisionLayer);
    switch (this->type2) {
        case 0:
            if (!CheckFlags(this->field_0x86.HWORD)) {
                if (this->type & 0x10) {
                    this->action = 3;
                } else {
                    sub_080836A0(this);
                }
            } else {
                this->type &= ~0x10;
                sub_08083638(this);
            }
            break;
        case 1:
            if (!CheckFlags(this->field_0x86.HWORD)) {
                sub_08083638(this);
            } else {
                sub_080836A0(this);
            }
            break;
        case 2:
            if (!CheckFlags(this->field_0x86.HWORD)) {
                this->frameIndex |= 4;
                sub_080836DC(this, this->field_0x7c.BYTES.byte2, this->field_0x76.HWORD);
                if (!CheckIsDungeon()) {
                    this->action = 5;
                } else {
                    this->action = 8;
                    sub_080787CC(this);
                    sub_08078850(this, 0, gUnk_0811F740[this->field_0x7c.BYTES.byte2], 0);
                }
            } else {
                DeleteThisEntity();
            }
            break;
        default:
            DeleteThisEntity();
            break;
    }
}

void sub_080834B4(Entity *this) {
    if (--this->actionDelay == 0) {
        this->action = 2;
        this->actionDelay = 7;
        SetTile(this->field_0x74.HWORD, this->field_0x76.HWORD, this->collisionLayer);
        EnqueueSFX(0x10b);
    }
}

void sub_080834EC(Entity *this) {
    sub_0806F69C(this);
    if (--this->actionDelay == 0) {
        if (this->type & 0x80) {
            sub_08083638(this);
        } else {
            DeleteThisEntity();
        }
    }
}

void sub_08083518(Entity *this) {
    if (sub_08083734(this, this->field_0x7c.BYTES.byte2)) {
        this->action = 4;
        sub_080836DC(this, this->field_0x7c.BYTES.byte2, this->field_0x76.HWORD);
    }
}

void sub_08083540(Entity *this) {
    sub_0806F69C(this);
    if (!--this->actionDelay) {
        if (this->type & 0x10) {
            this->type &= ~0x10;
            sub_080836A0(this);
        } else {
            if (this->type & 0x80) {
                sub_080836A0(this);
            } else {
                this->action = 5;
            }
        }
        sub_08083814(this, this->field_0x7c.BYTES.byte2);
        EnqueueSFX(0x10b);
    }
}

void nullsub_513(Entity* this) {}

void sub_08083598(Entity *this) {
    if (this->type2 == 0) {
        if (!CheckFlags(this->field_0x86.HWORD)) return;
    } else {
        if (CheckFlags(this->field_0x86.HWORD)) return;
    }
    sub_08083658(this);
}

void sub_080835C8(Entity *this) {
    if (this->type2 == 0) {
        if (CheckFlags(this->field_0x86.HWORD)) return;
    } else {
        if (!CheckFlags(this->field_0x86.HWORD)) return;
    }
    this->action = 3;
}

void sub_080835F8(Entity *this) {
    if (this->interactType == 0 && !CheckFlags(this->field_0x86.HWORD)) return;
    this->action = 1;
    this->actionDelay = 0x14;
    sub_08083658(this);
    SetFlag(this->field_0x86.HWORD);
    sub_080526F8(-1);
}

void sub_08083638(Entity *this) {
    this->action = 7;
    this->spriteSettings.b.draw = 0;
    this->x.HALF.HI = this->field_0x70.HALF.LO;
    this->y.HALF.HI = this->field_0x70.HALF.HI;
}

void sub_08083658(Entity *this) {
    const struct_0811F680 * tmp;
    this->action = 1;
    this->actionDelay = 0x14;
    this->direction = this->field_0x7c.BYTES.byte2 << 3;
    tmp = &gUnk_0811F680[this->field_0x7c.BYTES.byte2];
    this->x.HALF.HI += tmp->x;
    this->y.HALF.HI += tmp->y;
    sub_0805E4E0(this, 0x3c);
    SoundReq(0x10b);
}

void sub_080836A0(Entity *this) {
    this->action = 6;
    this->spriteSettings.b.draw = 1;
    this->x.HALF.HI = this->field_0x70.HALF.LO;
    this->y.HALF.HI = this->field_0x70.HALF.HI;
    SetTile(0x4022, this->field_0x76.HWORD, this->collisionLayer);
}

void sub_080836DC(Entity *this, u32 unk_0, u32 unk_1) {
    const struct_0811F680* tmp;
    SetTile(0x4022, unk_1, this->collisionLayer);
    this->actionDelay = 7;
    this->spriteSettings.b.draw = 1;
    this->direction = (unk_0 << 3) ^ 0x10;
    tmp = &gUnk_0811F688[unk_0];
    if (this->type2 != 2) {
        this->x.HALF.HI += tmp->x;
        this->y.HALF.HI += tmp->y;
    }
}

u32 sub_08083734(Entity *this, u32 unk0) {
    switch (unk0) {
        case 0:
            if (this->field_0x70.HALF_U.HI + 0xd  - gPlayerEntity.y.HALF.HI < 0) return 1;
            break;
        case 1:
            if (gPlayerEntity.x.HALF.HI - (this->field_0x70.HALF_U.LO - 0xb) < 0) return 1;
            break;
        case 2:
            if (gPlayerEntity.y.HALF.HI - (this->field_0x70.HALF_U.HI - 0x8) < 0) return 1;
            break;
        case 3:
            if (this->field_0x70.HALF_U.LO + 0xa - gPlayerEntity.x.HALF.HI < 0) return 1;
            break;
    }
    return 0;
}

u32 sub_080837B0(Entity *this) {
    u32 tmp;
    u32 tmp2 = gRoomControls.areaID;
    if (tmp2 < 0x40) {
        switch (tmp2) {
            default:
                tmp = 0xA;
                break;
            case 0x25:
                tmp = 0x1e7;
                break;
            case 0x35:
                tmp = 0x1c3;
                break;
        }
    } else {
        tmp = gUnk_0811F690[tmp2 - 0x40];
    }
    if (tmp2 == 0x68) {
        sub_0801D2B4(this, 0);
    } else {
        if (tmp2 == 0x88) {
            sub_0801D2B4(this, 1);
        }
    }
    LoadFixedGFX(this, tmp);
}

void sub_08083814(Entity *this, u32 unk0) {
    Entity* fx;
    const struct_0811F730 * tmp = &gUnk_0811F730[unk0];
    fx = CreateFx(this, 0x11, 0x40);
    if (fx) {
        fx->x.HALF.HI += tmp->unk_00.x;
        fx->y.HALF.HI += tmp->unk_00.y;
    }
    fx = CreateFx(this, 0x11, 0x40);
    if (fx) {
        fx->x.HALF.HI += tmp->unk_02.x;
        fx->y.HALF.HI += tmp->unk_02.y;
    }
}
