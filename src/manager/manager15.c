#include "global.h"
#include "flags.h"
#include "screen.h"
#include "manager.h"
#include "functions.h"

typedef struct {
    Manager manager;
    u8 unk_20;
    u8 unk_21;
    u8 unk_22;
    u8 unk_23; // used
    u16 unk_24;
    u16 unk_26;
    void* unk_28;
    u16 unk_2c;
    u8 unk_2e[0x6];
    s16 unk_34;
    s16 unk_36;
    s16 unk_38;
    s16 unk_3a;
    u16 unk_3c;
    u16 unk_3e; // used
} Manager15;

extern void (*const gUnk_081085D8[])(Manager*);

void sub_0805A280(Manager* this) {
    gUnk_081085D8[this->unk_0a](this);
}

void sub_0805A89C(Manager15*);
void sub_0805A8EC(Manager15*);
void sub_0805AAF0(u32);

void sub_0805A298(Manager15* this) {
    if (this->manager.action == 0) {
        sub_0805A89C(this);
        if (!CheckLocalFlag(this->unk_3e)) {
            this->unk_23 = 1;
        } else {
            this->unk_23 = 2;
        }
        sub_0805AAF0(this->unk_23);
        gScreen.lcd.displayControl |= 0x4800;
    }
    sub_0805A8EC(this);
}

extern void (*const gUnk_081085F8[])(Manager15*);

void sub_0805A2E4(Manager15* this) {
    if (this->manager.action == 0) {
        sub_0805A89C(this);
        this->unk_23 = 1;
        sub_0805AAF0(1);
        if (!CheckLocalFlag(this->unk_3e)) {
            this->manager.action = 1;
            gScreen.lcd.displayControl &= 0xB7FF;
        } else {
            if (CheckLocalFlag(0x48)) {
                this->manager.action = 4;
            } else {
                this->manager.action = 3;
            }
            gScreen.lcd.displayControl |= 0x4800;
        }
    } else {
        gUnk_081085F8[this->manager.action](this);
    }
    if (this->manager.next) {
        sub_0805A8EC(this);
    }
}

extern Entity gUnk_080E4C08;

void sub_0805A370(Manager15* this) {
    if (this->manager.unk_0d) {
        LoadRoomEntityList(&gUnk_080E4C08);
        this->manager.action = 3;
        PlaySFX(0x80100000);
    }
}

void sub_0805A394(Manager15* this) {
    Entity* ent;
    if ((ent = FindEntityInListBySubtype(0x3, 0x13, 0x4))) {
        if (ent->entityType.form != 4) {
            return;
        }
    }
    SetLocalFlag(0x48);
    ClearRoomFlag(0);
    gScreen.lcd.displayControl &= 0xB7FF;
    DeleteThisEntity();
}

void nullsub_496(Manager15* this) {
}

extern void (*const gUnk_0810860C[])(Manager15*);

void sub_0805A3D4(Manager15* this) {
    if (this->manager.action == 0) {
        sub_0805A89C(this);
        if (this->manager.unk_0a == 3) {
            this->unk_23 = 2;
        } else {
            this->unk_23 = 1;
        }
        sub_0805AAF0(this->unk_23);
        if (!CheckLocalFlag(this->unk_3e)) {
            ClearFlag(this->unk_3c);
            this->manager.action = 1;
            gScreen.lcd.displayControl &= 0xB7FF;
        } else {
            SetFlag(this->unk_3c);
            this->manager.action = 3;
            gScreen.lcd.displayControl |= 0x4800;
        }
    } else {
        gUnk_0810860C[this->manager.action](this);
    }
    sub_0805A8EC(this);
}

void sub_0805A4CC(Manager15*, u32);

void sub_0805A464(Manager15* this) {
    if (CheckLocalFlag(this->unk_3e)) {
        this->manager.action = 2;
        sub_0805A4CC(this, 0);
    }
}

void sub_0805A480(Manager15* this) {
    if (this->manager.unk_0d != 0) {
        this->manager.action = 3;
        SetFlag(this->unk_3c);
    }
}

void sub_0805A498(Manager15* this) {
    if (!CheckLocalFlag(this->unk_3e)) {
        this->manager.action = 4;
        sub_0805A4CC(this, 1);
    }
}

void sub_0805A4B4(Manager15* this) {
    if (this->manager.unk_0d != 0) {
        this->manager.action = 1;
        ClearFlag(this->unk_3c);
    }
}

void sub_0805A4CC(Manager15* this, u32 unk_0) {
    Entity* tmp;
    tmp = CreateObject(0x8e, unk_0, 0);
    if (tmp) {
        tmp->x.HALF.HI = this->unk_38 + gRoomControls.roomOriginX;
        tmp->y.HALF.HI = this->unk_3a + gRoomControls.roomOriginY - 0x30;
        tmp->parent = (Entity*)this;
        this->manager.unk_0d = 0;
    }
}

extern void (*const gUnk_08108620[])(Manager15*);
void sub_0805AA58(Manager15*);
void sub_0805A9CC(Manager15*);

void sub_0805A500(Manager15* this) {
    if (this->manager.action == 0) {
        sub_0805A89C(this);
        this->unk_28 = 0;
        if (CheckLocalFlag(0x36)) {
            this->unk_23 = 3;
            this->manager.action = 5;
            gScreen.lcd.displayControl |= 0x4800;
        } else {
            if (CheckLocalFlag(0x34)) {
                this->unk_23 = 4;
                this->manager.action = 3;
                gScreen.lcd.displayControl |= 0x4800;
            } else {
                this->unk_23 = 4;
                this->manager.action = 1;
                gScreen.lcd.displayControl &= 0xB7FF;
            }
        }
        sub_0805AAF0(this->unk_23);
    } else {
        gUnk_08108620[this->manager.action](this);
    }
    sub_0805AA58(this);
    sub_0805A9CC(this);
    if (gRoomControls.unk2 == 1) {
        gScreen.lcd.displayControl |= 0x80 << 7;
        this->manager.unk_0d = 1;
        return;
    }
    if (!this->manager.unk_0d)
        return;
    this->manager.unk_0d = 0;
    if (this->unk_20 == gRoomControls.roomID)
        return;
    gScreen.lcd.displayControl &= 0xB7FF;
    DeleteThisEntity();
}

void sub_0805A5FC(Manager15* this) {
    if (CheckLocalFlag(0x34)) {
        this->manager.action = 2;
        sub_0805A4CC(this, 2);
    }
}

void sub_0805A618(Manager15* this) {
    if (this->manager.unk_0d) {
        this->manager.action = 3;
    }
}

void sub_0805A628(Manager15* this) {
    if (CheckLocalFlag(0x36)) {
        this->manager.action = 4;
        this->unk_23 = 3;
        sub_0805A4CC(this, 3);
    }
}

void sub_0805A64C(Manager15* this) {
    if (this->manager.unk_0d) {
        this->manager.action = 5;
    }
}

void sub_0805A65C(Manager15* this) {
}
void sub_0805A660(Manager15* this) {
}

extern void (*const gUnk_08108638[])(Manager15*);
void sub_0805A68C(Manager15*);

void sub_0805A664(Manager15* this) {
    gUnk_08108638[this->manager.action](this);
    sub_0805A8EC(this);
    sub_0805A68C(this);
}

extern u32 sub_0806FBFC(u32, u32, u32, u32);

void sub_0805A68C(Manager15* this) {
    if (sub_0806FBFC(this->unk_38 - 0x18, this->unk_3a - 0x18, 0x30, 0x30)) {
        if (this->unk_2c <= 0x1007) {
            gScreen.controls.alphaBlend = ++this->unk_2c;
            this->unk_22 = 0;
        }
    } else {
        if (this->unk_2c > 0x1000) {
            this->unk_2c--;
        }
        gScreen.controls.alphaBlend = this->unk_2c;
    }
}

u32 sub_0805A73C(Manager15*);

void sub_0805A6E8(Manager15* this) {
    u16 tmp;
    sub_0805A89C(this);
    this->unk_23 = 0;
    sub_0805AAF0(0);
    this->unk_38 += gRoomControls.roomOriginX;
    this->unk_3a += gRoomControls.roomOriginY;
    if (!sub_0805A73C(this)) {
        this->manager.action++;
    }
    this->unk_2c = 0x1000;
    tmp = gScreen.lcd.displayControl | 0x4800;
    gScreen.lcd.displayControl = tmp;
}

u32 sub_0805A73C(Manager15* this) {
    return sub_0806FBFC(this->unk_38 - 0x6, this->unk_3a - 0x6, 0xC, 0xC);
}

void sub_0805A758(Manager15* this) {
    if (!sub_0805A73C(this)) {
        this->manager.action++;
    }
}

extern u8 gUnk_02034490;
extern void sub_0805E4E0(Manager*, u32);
extern void sub_08077B20(void);

void sub_0805A76C(Manager15* this) {
    if ((gPlayerEntity.currentHealth != 0) && (gPlayerEntity.height.HALF.HI == 0) && (!gPlayerState.field_0x2c)) {
        switch (gPlayerState.field_0xa9) {
            case 1:
            case 0:
                if (sub_0805A73C(this)) {
                    this->manager.action++;
                    sub_08004168(&gPlayerEntity);
                    gPlayerEntity.animationState = 4;
                    sub_0805E4E0(&this->manager, 0x258);
                    sub_08078A90(0xFF);
                    gUnk_02034490 = 1;
                    gRoomControls.cameraTarget = 0;
                    sub_08077B20();
                }
        }
    }
}

void sub_0805A7E4(Manager15* this) {
    if (gPlayerState.playerAction != 0x12) {
        gPlayerState.playerAction = 0x12;
        gPlayerState.field_0x38 = 0;
        gPlayerState.field_0x39 = 0;
    }
}

void sub_0805A804(Manager15* this) {
    switch (this->manager.action) {
        case 0:
            if (CheckLocalFlag(this->unk_3e)) {
                this->manager.action = 1;
            } else {
                this->manager.action = 2;
            }
            this->manager.unk_0d = 1;
            this->manager.unk_10 |= 0x20;
            sub_0805E3A0(this, 6);
            break;
        case 1:
            if (CheckLocalFlag(this->unk_3e))
                break;
            this->manager.action = 2;
            sub_0805A4CC(this, 4);
            break;
        case 2:
            if (this->manager.unk_0d) {
                this->manager.action = 3;
            }
            break;
        case 3:
            if (!CheckLocalFlag(this->unk_3e))
                break;
            this->manager.action = 4;
            sub_0805A4CC(this, 4);
            break;
        case 4:
            if (this->manager.unk_0d) {
                this->manager.action = 1;
            }
            break;
        default:
            DeleteThisEntity();
    }
}

void sub_0805AAC8(Manager15*);
extern void sub_08052D74(void*, void*, void*);

void sub_0805A89C(Manager15* this) {
    sub_0805E3A0(this, 6);
    this->manager.action = 1;
    this->manager.unk_10 |= 0x20;
    this->manager.unk_0e = 8;
    this->manager.unk_0f = 0x10;
    this->unk_21 = 0;
    this->unk_22 = 0;
    this->unk_20 = gRoomControls.roomID;
    this->unk_24 = gRoomControls.roomOriginX;
    this->unk_26 = gRoomControls.roomOriginY;
    sub_08052D74(this, sub_0805AAC8, 0);
}

void sub_0805A94C(Manager15* this);

void sub_0805A8EC(Manager15* this) {
    sub_0805AA58(this);
    sub_0805A94C(this);
    if (gRoomControls.unk2 == 1) {
        gScreen.lcd.displayControl |= 0x4000;
        this->manager.unk_0d = 1;
    } else {
        if (!this->manager.unk_0d)
            return;
        this->manager.unk_0d = 0;
        if (this->unk_20 == gRoomControls.roomID)
            return;
        gScreen.lcd.displayControl &= 0xB7FF;
        DeleteThisEntity();
    }
}

void sub_0805A94C(Manager15* this) {
    int tmp1, tmp2;
    gScreen.affine.bg3xOffset = gRoomControls.roomScrollX - this->unk_24 + this->unk_34;
    gScreen.affine.bg3yOffset = gRoomControls.roomScrollY - this->unk_26 + this->unk_36;
    tmp1 = -gScreen.affine.bg3xOffset;
    tmp2 = tmp1 + 0x100;
    if (tmp1 < 0)
        tmp1 = 0;
    if (tmp1 > 0xF0)
        tmp1 = 0xF0;
    if (tmp2 < 0)
        tmp2 = 0;
    if (tmp2 > 0xF0)
        tmp2 = 0xF0;
    gScreen.controls.window1HorizontalDimensions = (tmp1 << 8 | tmp2);
    tmp1 = -gScreen.affine.bg3yOffset;
    tmp2 = tmp1 + 0x100;
    if (tmp1 < 0)
        tmp1 = 0;
    if (tmp1 > 0xA0)
        tmp1 = 0xA0;
    if (tmp2 < 0)
        tmp2 = 0;
    if (tmp2 > 0xA0)
        tmp2 = 0xA0;
    gScreen.controls.window1VerticalDimensions = (tmp1 << 8 | tmp2);
}

extern u8 gUnk_02001A40[];

#ifdef NON_MATCHING
void sub_0805A9CC(Manager15* this) {
    int tmp1, tmp2;
    void* tmp3;
    gScreen.affine.bg3xOffset = gRoomControls.roomScrollX - this->unk_24 + this->unk_34;
    tmp1 = -gScreen.affine.bg3xOffset;
    tmp2 = tmp1 + 0x100;
    if (tmp1 < 0)
        tmp1 = 0;
    if (tmp1 > 0xF0)
        tmp1 = 0xF0;
    if (tmp2 < 0)
        tmp2 = 0;
    if (tmp2 > 0xF0)
        tmp2 = 0xF0;
    gScreen.controls.window1HorizontalDimensions = tmp1 << 8 | tmp2;
    tmp1 = gRoomControls.roomScrollY - this->unk_26 + this->unk_36;
    gScreen.affine.bg3yOffset = tmp1 & 0x3F;
    if (tmp1 < 0)
        tmp1 += 0x3F;
    tmp3 = (&gUnk_02001A40[(tmp1 >> 6 << 9)]);
    gScreen.affine.unk5 = (u32)tmp3;
    gScreen.controls.window1VerticalDimensions = 0xa0;
    if (this->unk_28 == tmp3)
        return;
    this->unk_28 = tmp3;
    gScreen.affine.unk4 = 1;
}
#else
NAKED
void sub_0805A9CC(Manager15* this) {
    asm(".include \"asm/non_matching/manager15/sub_0805A9CC.inc\"");
}
#endif

extern struct { u8 unk_00[0x20]; } gUnk_085A97A0[];
extern u16 gUnk_081085B8[];
extern void LoadPalettes(const u8*, u32, u32);

void sub_0805AA58(Manager15* this) {
    if (--this->manager.unk_0e == 0) {
        this->manager.unk_0e = 8;
        this->unk_21 += 1;
        this->unk_21 &= 3;
        LoadPalettes(gUnk_085A97A0[this->unk_21].unk_00, 5, 1);
    }
    if (--this->manager.unk_0f == 0) {
        this->manager.unk_0f = 0x10;
        this->unk_22 += 1;
        this->unk_22 &= 0xF;
        gScreen.controls.alphaBlend = gUnk_081085B8[this->unk_22];
    }
}

void sub_0805AAC8(Manager15* this) {
    sub_0805AAF0(this->unk_23);
    sub_0805A280(&this->manager);
}

extern u16 gUnk_08108648[];

void sub_0805AADC(u32 unk0) {
    LoadGfxGroup(gUnk_08108648[unk0]);
}

void sub_0805AAF0(u32 unk0) {
    sub_0805AADC(unk0);
    gScreen.controls.layerFXControl = 0x3E48;
    gScreen.controls.alphaBlend = 0x1008;
    gScreen.affine.bg3Control = 0x1E04;
    gScreen.affine.unk5 = &gUnk_02001A40;
    gScreen.affine.bg3xOffset = 0;
    gScreen.affine.bg3yOffset = 0;
    gScreen.affine.unk4 = 1;
    gScreen.controls.windowInsideControl = 0x3F3F;
    gScreen.controls.windowOutsideControl = 0x37;
    gScreen.controls.window1HorizontalDimensions = 0xF0;
    gScreen.controls.window1VerticalDimensions = 0xA0;
}
