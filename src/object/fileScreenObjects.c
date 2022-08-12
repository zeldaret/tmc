/**
 * @file fileScreenObjects.c
 * @ingroup Objects
 *
 * @brief File Screen Objects object
 */
#include "fileselect.h"
#include "functions.h"
#include "main.h"
#include "menu.h"
#include "object.h"
#include "player.h"

extern u32 sub_080041EC(int, int);

static bool32 sub_0808E950(void);
static void sub_0808EABC(Entity*);
static Entity* sub_0808EC80(int);
static u32 sub_0808EF6C(Entity*);
static void sub_0808EFF0(Entity*);
static void sub_0808EA28(Entity*);
static void sub_0808E7D8(Entity*);
static void sub_0808E988(Entity*);
static void sub_0808E9F4(Entity*);
static void sub_0808EBB8(Entity*);
static void sub_0808ECBC(Entity*);
static void sub_0808ED64(Entity*);
static void sub_0808E9F4(Entity*);
static void sub_0808ED98(Entity*);
static void sub_0808EE00(Entity*);
static void nullsub_522(Entity*);
static void sub_0808EB74(Entity*);
static void sub_0808EE98(Entity*);
static void sub_0808EED8(Entity*);
static void sub_0808EF24(Entity*);
static void sub_0808E818(Entity*);
static void sub_0808E7F0(Entity*);

typedef struct {
    u8 unk0;
    u8 unk1;
    u8 unk2;
} PACKED struct_08121CD4;

typedef struct {
    u16 unk0;
    s16 unk2;
    u16 unk4;
    u8 unk6_0 : 3;
    u8 unk6_3 : 3;
    u8 unk6_6 : 2;
    u8 unk7;
} struct_08121D54;

extern const int gUnk_08133368[];

void FileScreenObjects(Entity* this) {
    static void (*const gUnk_08121C64[])(Entity*) = {
        sub_0808EA28, sub_0808EA28, sub_0808EA28, sub_0808EA28, sub_0808ECBC, sub_0808ECBC, sub_0808ECBC,
        sub_0808ECBC, sub_0808ED64, sub_0808ED98, sub_0808EE00, sub_0808EE00, sub_0808EE00, sub_0808EE00,
        sub_0808EE00, sub_0808EB74, sub_0808EBB8, nullsub_522,  sub_0808EE98, sub_0808EED8, sub_0808EED8,
        sub_0808EF24, sub_0808EF24, sub_0808E7D8, sub_0808E988, sub_0808E9F4,
    };
    if (this->health == 0) {
        sub_0808EFF0(this);
    }
    gUnk_08121C64[this->type](this);
    if (this->animIndex < 64) {
        UpdateAnimationSingleFrame(this);
    }
}

void sub_0808E7D8(Entity* this) {
    static void (*const gUnk_08121CCC[])(Entity*) = {
        sub_0808E7F0,
        sub_0808E818,
    };
    gUnk_08121CCC[this->action](this);
}

void sub_0808E7F0(Entity* this) {
    LoadSwapGFX(this, 1, 2);
    this->palette.b.b0 = 0xF;
    this->spriteSettings.draw = 0;
    this->type2 = 0xFF;
    this->action = 1;
}

void sub_0808E818(Entity* this) {
    u32 var0;
    u32 var1;

    if (!sub_0808E950()) {
        int var2 = -1;
        this->type2 = var2;
        this->field_0x68.HWORD = var2;
        this->field_0x6a.HWORD = var2;
        this->spriteSettings.draw = 0;
        return;
    }

    if (this->type2 != gMapDataBottomSpecial.unk6) {
        this->type2 = gMapDataBottomSpecial.unk6;
        this->field_0x68.HWORD = CheckGlobalFlag(EZERO_1ST) == 0 ? 0x400 : 0x100;
        this->field_0x70.BYTES.byte0 = 4;
        this->animationState = 2;
        var1 = gUnk_08133368[GetPlayerPalette(TRUE) - 22] & 0xFFFFFF;
        LoadPalettes(&gGlobalGfxAndPalettes[var1], 31, 1);
    }

    if (gUI.lastState == 0) {
        if (gInput.heldKeys & L_BUTTON) {
            switch (gInput.newKeys) {
                case DPAD_UP:
                    this->animationState = 0;
                    break;
                case DPAD_RIGHT:
                    this->animationState = 1;
                    break;
                case DPAD_DOWN:
                    this->animationState = 2;
                    break;
                case DPAD_LEFT:
                    this->animationState = 3;
                    break;
                case B_BUTTON:
                    this->field_0x70.BYTES.byte0 = this->field_0x70.BYTES.byte0 ? 0 : 4;
                    break;
            }
        }
    }

    this->spriteSettings.flipX = this->animationState == 3;
    var0 = this->field_0x68.HWORD + this->field_0x70.BYTES.byte0 + this->animationState;
    if (this->field_0x6a.HWORD != var0) {
        this->field_0x6a.HWORD = var0;
        this->spriteIndex = var0 >> 8;
        InitAnimationForceUpdate(this, (u8)var0);
    }

    this->spriteSettings.draw = 2;
}

static bool32 sub_0808E950(void) {
    bool32 result = FALSE;
    switch (gUI.lastState) {
        case 0:
        case 4:
        case 5:
        case 6:
        case 7:
            result = gMapDataBottomSpecial.saveStatus[gMapDataBottomSpecial.unk6] == 1;
            break;
    }
    return result;
}

void sub_0808E988(Entity* this) {
    if (this->action == 0) {
        this->action = 1;
#ifdef EU
        this->spriteIndex = 0x141;
#else
        this->spriteIndex = 0x142;
#endif
        this->type2 = 0xFF;
        LoadSwapGFX(this, 1, 3);
    }

    if (sub_0808E950()) {
        int i;
        for (i = 6; i != 0; i--) {
            if (GetInventoryValue(i)) {
                break;
            }
        }

        if (i != 0) {
            if (this->type2 != i) {
                InitAnimationForceUpdate(this, i);
            }
            this->spriteSettings.draw = 2;
            return;
        }
    }

    this->spriteSettings.draw = 0;
}

void sub_0808E9F4(Entity* this) {
    if (sub_0808E950() && gSave.saw_staffroll) {
        this->spriteSettings.draw = 2;
    } else {
        this->spriteSettings.draw = 0;
    }
}

void sub_0808EA28(Entity* this) {
    u32 var0;
    u32 var1;

    if (this->type == 3) {
        if (gSaveHeader->language > LANGUAGE_EN) {
            this->spriteSettings.draw = 2;
        } else {
            this->spriteSettings.draw = 0;
        }
    }

    if (this->type == gMapDataBottomSpecial.unk6) {
        var0 = 12;
        var1 = 1;
    } else {
        if (gUI.lastState == 5 && this->type == gMapDataBottomSpecial.unk7) {
            var0 = 13;
            var1 = 2;
        } else {
            var0 = 14;
            var1 = 2;
        }
    }

    this->palette.b.b0 = var0;
    this->spriteRendering.b3 = var1;
    sub_0808EABC(this);
    gMapDataBottomSpecial.isTransitioning |= sub_0808EF6C(this);
}

void sub_0808EABC(Entity* this) {
    int var0 = -72;
    int var1 = this->type * 32 + 40;
    int var2 = gMapDataBottomSpecial.unk6 == this->type;
    switch (gUI.lastState) {
        case 0:
            var0 = 24;
            break;
        case 3:
        case 4:
        case 6:
        case 7:
            if (var2) {
                var0 = 42;
                var1 = 56;
            }
            break;
        case 5:
            switch (gGenericMenu.unk10.a[this->type]) {
                case 0:
                    var0 = 42;
                    var1 = 40;
                    break;
                case 1:
                case 2:
                    var0 = 20;
                    var1 = 144;
                    var1 -= (gGenericMenu.unk16 - gGenericMenu.unk10.a[this->type]) * 32;
                    break;
            }
            break;
        case 2:
            if (var2) {
                var0 = 26;
                var1 = 42;
            }
            break;
        default:
            if (var2) {
                var0 = 8;
                var1 = 35;
            }
            break;
    }

    this->field_0x68.HWORD = var0;
    this->field_0x6a.HWORD = var1;
}

void sub_0808EB74(Entity* this) {
    Entity* entity = sub_0808EC80(gMapDataBottomSpecial.unk6);
    if (entity != NULL) {
        this->x.WORD = entity->x.WORD;
        this->y.WORD = entity->y.WORD;
        this->spriteRendering.b3 = entity->spriteRendering.b3;
        SortEntityBelow(entity, this);
    } else {
        this->x.HALF.HI = 0xF000;
        this->y.HALF.HI = 0xF000;
    }
}

void sub_0808EBB8(Entity* this) {
    u32 var0;
    u32 x, y;
    Entity* entity;

    switch (gUI.lastState) {
        case 4:
            var0 = gMenu.column_idx + 4;
            break;
        case 5:
            var0 = 2;
            break;
        case 6:
            var0 = gMenu.column_idx == 0 ? 7 : 6;
            break;
        case 7:
            var0 = 4;
            break;
        case 2:
            var0 = 1;
            break;
        default:
            var0 = 0;
            break;
    }

    x = y = 0xF000;
    switch (var0) {
        case 0:
            break;
        case 1:
            y = gSaveHeader->language * 16 + 24;
            x = 112;
            break;
        case 2:
            var0 = gMapDataBottomSpecial.unk7;
            if (var0 == 4) {
                var0 = 7;
            }
            // Fall through
        default:
            entity = sub_0808EC80(var0);
            if (entity != NULL) {
                SortEntityBelow(entity, this);
                this->spriteRendering.b3 = entity->spriteRendering.b3;
                x = entity->x.HALF.HI;
                y = entity->y.HALF.HI;
            }
            break;
    }

    this->x.HALF.HI = x;
    this->y.HALF.HI = y;
}

static Entity* sub_0808EC80(int form) {
    Entity* entityA = (Entity*)&gEntityLists[6];
    Entity* entityB = entityA->next;
    while (entityB != entityA) {
        if ((entityB->kind == OBJECT && entityB->id == 0x48) && form == entityB->type) {
            return entityB;
        }
        entityB = entityB->next;
    }
    return NULL;
}

void sub_0808ECBC(Entity* this) {
    static const struct_08121CD4 gUnk_08121CD4[][4] = {
        { { 0x9, 0x18, 0xb0 }, { 0x9, 0x60, 0xb0 }, { 0x9, 0xa8, 0xb0 }, { 0x9, 0x40, 0xb0 } },
        { { 0x0, 0x18, 0x90 }, { 0x1, 0x60, 0x90 }, { 0x2, 0xa8, 0x90 }, { 0x9, 0x40, 0xb0 } },
        { { 0x9, 0x18, 0xb0 }, { 0x9, 0x60, 0xb0 }, { 0x9, 0xa8, 0xb0 }, { 0x4, 0x14, 0x90 } },
        { { 0x9, 0x18, 0xb0 }, { 0x9, 0x60, 0xb0 }, { 0x1, 0x88, 0x90 }, { 0x0, 0x40, 0x90 } },
        { { 0x0, 0x18, 0x90 }, { 0x9, 0x60, 0xb0 }, { 0x9, 0xa8, 0xb0 }, { 0x9, 0x40, 0xb0 } }
    };
    int var0;
    int var1;
    int var2;
    const struct_08121CD4* var3;

    var0 = gMenu.column_idx;
    switch (gUI.lastState) {
        case 4:
            var1 = 1;
            break;
        case 5:
            var0 = gMapDataBottomSpecial.unk7;
            var1 = 2;
            break;
        case 6:
            var1 = 3;
            break;
        case 7:
            var1 = 4;
            break;
        default:
            var1 = 0;
            break;
    }

    var2 = this->type - 4;
    var3 = &gUnk_08121CD4[var1][var2];
    this->field_0x68.HWORD = var3->unk1;
    this->field_0x6a.HWORD = var3->unk2;
    if (var3->unk0 == var0) {
        this->palette.b.b0 = 13;
    } else {
        this->palette.b.b0 = 14;
    }

    gMapDataBottomSpecial.isTransitioning |= sub_0808EF6C(this);
}

void sub_0808ED64(Entity* this) {
    int y = 255;
    if (gUI.lastState == 1 && gGenericMenu.unk10.a[1] != 5) {
        this->x.HALF.HI = gGenericMenu.unk10.a[0] * 16 + 28;
        y = gGenericMenu.unk10.a[1] * 16 + 58;
    }
    this->y.HALF.HI = y;
}

void sub_0808ED98(Entity* this) {
    static const s8 gUnk_08121D10[] = {
        0, -1, -3, -2, -2, -1, 0, 0,
    };
    int y;
    if (gUI.lastState != 1) {
        this->field_0x68.HWORD = 27;
        y = -10;
    } else {
        u32 var0 = gGenericMenu.unk10.a[3];
        if (var0 > 5) {
            var0 = 5;
        }
        this->field_0x68.HWORD = var0 * 8 + 27;
        y = 24;
    }

    this->y.HALF.HI = y;
    this->field_0x6a.HWORD = y;
    this->subtimer++;
    this->spriteOffsetY = gUnk_08121D10[(this->subtimer / 4) & 0x7];
    sub_0808EF6C(this);
}

void sub_0808EE00(Entity* this) {
    static const u16 gUnk_08121D18[][8] = { { 0x2c, 0x54, 0x7c, 0xa4, 0xcc, 0x0, 0x0, 0x0 },
                                            { 0xfff, 0x2e, 0x62, 0x96, 0xca, 0x0, 0x0, 0x0 } };
    static const u8 gUnk_08121D38[][8] = {
        { 12, 13, 14, 16, 17, 0, 0, 0 },
        { -1, 14, 15, 16, 17, 0, 0, 0 },
    };
    int var0, var1, var2;

    var0 = ((SaveHeader*)0x2000000)->language != 0;
    var1 = this->type - 10;
    this->frameIndex = gUnk_08121D38[var0][var1];
    this->x.HALF.HI = gUnk_08121D18[var0][var1];
    this->field_0x68.HWORD = gUnk_08121D18[var0][var1];
    var1 -= var0;
    if (gUI.lastState != 1) {
        var1 = 128;
        var2 = 176;
    } else {
        var2 = 140;
    }

    this->field_0x6a.HWORD = var2;
    this->palette.b.b0 = gGenericMenu.unk10.a[1] == 5 && var1 == gGenericMenu.unk10.a[2] ? 11 : 9;
    gMapDataBottomSpecial.isTransitioning |= sub_0808EF6C(this);
}

void nullsub_522(Entity* this) {
}

void sub_0808EE98(Entity* this) {
    static const u8 gUnk_08121D48[] = { 0x28, 0x27, 0x28, 0x28, 0x28, 0x2a, 0x29, 0x28, 0xff, 0x0, 0x0, 0x0 };
    this->timer = gUI.lastState;
    this->frameIndex = gUnk_08121D48[this->timer];
    if (this->timer != 2) {
        this->field_0x68.HWORD = 96;
    } else {
        this->field_0x68.HWORD = -96;
    }
    sub_0808EF6C(this);
}

void sub_0808EED8(Entity* this) {
    int var0;
    if (gUI.lastState != 3) {
        this->spriteSettings.draw = 0;
    } else {
        this->spriteSettings.draw = 2;
        var0 = this->type - 19;
        this->palette.b.b0 = gMenu.column_idx == var0 ? 4 : 3;
    }
}

void sub_0808EF24(Entity* this) {
    int var0;
    if (gUI.lastState != 3) {
        this->spriteSettings.draw = 0;
    } else {
        this->spriteSettings.draw = 2;
        if (this->type == 21) {
            var0 = ((SaveHeader*)0x2000000)->msg_speed;
        } else {
            var0 = ((SaveHeader*)0x2000000)->brightness;
        }
        this->frameIndex = this->lastFrameIndex + var0;
    }
}

static u32 sub_0808EF6C(Entity* this) {
    int var0;
    u32 var1;
    int var2;
    u32 var3;
    int var4;
    s16 var5;
    s16 var6;
    int var7;

    var6 = this->field_0x68.HWORD;
    var0 = var6 - this->x.HALF.HI;
    var1 = var0;
    if (var0 < 0) {
        var1 = -var0;
    }
    if (var1 < 2) {
        this->x.WORD = var6 << 16;
        var0 = 0;
    }

    var5 = this->field_0x6a.HWORD;
    var2 = var5 - this->y.HALF.HI;
    var3 = var2;
    if (var2 < 0) {
        var3 = -var2;
    }
    if (var3 < 2) {
        this->y.WORD = var5 << 16;
        var2 = 0;
    }

    if ((var0 | var2) == 0) {
        return 0;
    }

    var4 = var7 = sub_080041EC(var0, var2);
    var4 += 128;
    var7 = var4 + var7 * 16;
    if (this->field_0x6c.HWORD < var7) {
        var7 = this->field_0x6c.HWORD;
    }
    this->speed = var7;
    this->direction = sub_080045DA(var0, var2) >> 3;
    LinearMoveUpdate(this);
    return 1;
}

static void sub_0808EFF0(Entity* this) {
    static const struct_08121D54 gUnk_08121D54[] = {
        { 0x800, -0x40, 0x28, 2, 4, 1, 0x80 }, { 0x800, -0x40, 0x48, 2, 4, 1, 0x81 },
        { 0x800, -0x40, 0x68, 2, 4, 1, 0x82 }, { 0x800, -0x40, 0x88, 2, 4, 1, 0x83 },
        { 0x300, 0x40, 0xb0, 1, 1, 1, 0x84 },  { 0x300, 0x70, 0xb0, 1, 1, 1, 0x85 },
        { 0x300, 0x90, 0xb0, 1, 1, 1, 0x86 },  { 0x300, 0x40, 0xb0, 1, 1, 1, 0x87 },
        { 0x1000, 0x1c, 0xff, 2, 7, 2, 0x88 }, { 0x200, 0x1b, 0xff, 1, 1, 1, 0x0 },
        { 0x200, 0x0, 0xb0, 1, 1, 1, 0xff },   { 0x200, 0x0, 0xb0, 1, 2, 1, 0xff },
        { 0x200, 0x0, 0xb0, 1, 3, 1, 0xff },   { 0x200, 0x0, 0xb0, 1, 4, 1, 0xff },
        { 0x200, 0x0, 0xb0, 1, 5, 1, 0xff },   { 0x800, 0x0, 0x0, 2, 6, 1, 0x1 },
        { 0x1000, 0x0, 0x0, 2, 6, 1, 0x1 },    { 0x1000, 0x0, 0xb0, 2, 6, 1, 0x1 },
        { 0x1000, 0x60, 0x0, 0, 0, 0, 0xff },  { 0x400, 0xa8, 0x50, 1, 1, 1, 0x99 },
        { 0x400, 0xa8, 0x50, 1, 1, 1, 0x9a },  { 0x400, 0xa8, 0x50, 1, 1, 1, 0x9b },
        { 0x400, 0xa8, 0x50, 1, 1, 1, 0x9e },  { 0x400, 0x80, 0x48, 1, 1, 1, 0xff },
        { 0x400, 0xc0, 0x42, 1, 1, 1, 0xff },  { 0x400, 0xc8, 0x32, 1, 1, 1, 0xa5 }
    };
    const struct_08121D54* var0;
    u8 var1;

    this->spriteSettings.draw = 2;
    this->speed = 0x400;
    this->health = 1;
    this->frameIndex = 0xFF;
    this->animIndex = 0xFF;
    var0 = &gUnk_08121D54[this->type];
    this->x.HALF.HI = var0->unk2;
    this->field_0x68.HWORD = var0->unk2;
    this->y.HALF.HI = var0->unk4;
    this->field_0x6a.HWORD = var0->unk4;
    this->spriteRendering.b3 = var0->unk6_0;
    this->spritePriority.b0 = var0->unk6_3;
    this->spriteOrientation.flipY = var0->unk6_6;
    this->field_0x6c.HWORD = var0->unk0;
    var1 = var0->unk7;
    if (var1 & 0x80) {
        var1 &= ~(0x80);
        this->frameIndex = var1;
        this->lastFrameIndex = var1;
    } else {
        InitAnimationForceUpdate(this, var1);
    }
}
