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

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u16 unk_68;
    /*0x6a*/ u16 unk_6a;
    /*0x6c*/ u16 unk_6c;
    /*0x6e*/ u8 unused1[2];
    /*0x70*/ u8 unk_70;
} FileScreenObjectsEntity;

extern u32 CalcDistance(s32, s32);

static bool32 sub_0808E950(void);
static void sub_0808EABC(FileScreenObjectsEntity*);
static Entity* sub_0808EC80(s32);
static u32 sub_0808EF6C(FileScreenObjectsEntity*);
static void sub_0808EFF0(FileScreenObjectsEntity*);
static void FileScreenObjects_Type0(FileScreenObjectsEntity*);
static void FileScreenObjects_Type23(FileScreenObjectsEntity*);
static void FileScreenObjects_Type24(FileScreenObjectsEntity*);
static void FileScreenObjects_Type25(FileScreenObjectsEntity*);
static void FileScreenObjects_Type16(FileScreenObjectsEntity*);
static void FileScreenObjects_Type4(FileScreenObjectsEntity*);
static void FileScreenObjects_Type8(FileScreenObjectsEntity*);
static void FileScreenObjects_Type25(FileScreenObjectsEntity*);
static void FileScreenObjects_Type9(FileScreenObjectsEntity*);
static void FileScreenObjects_Type10(FileScreenObjectsEntity*);
static void FileScreenObjects_Type17(FileScreenObjectsEntity*);
static void FileScreenObjects_Type15(FileScreenObjectsEntity*);
static void FileScreenObjects_Type18(FileScreenObjectsEntity*);
static void FileScreenObjects_Type19(FileScreenObjectsEntity*);
static void FileScreenObjects_Type21(FileScreenObjectsEntity*);
static void FileScreenObjects_Type23_LinkPreview(FileScreenObjectsEntity*);
static void FileScreenObjects_Type23_Init(FileScreenObjectsEntity*);

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

extern const s32 gUnk_08133368[];

void FileScreenObjects(FileScreenObjectsEntity* this) {
    static void (*const FileScreenObjects_Types[])(FileScreenObjectsEntity*) = {
        FileScreenObjects_Type0,  FileScreenObjects_Type0,  FileScreenObjects_Type0,  FileScreenObjects_Type0,
        FileScreenObjects_Type4,  FileScreenObjects_Type4,  FileScreenObjects_Type4,  FileScreenObjects_Type4,
        FileScreenObjects_Type8,  FileScreenObjects_Type9,  FileScreenObjects_Type10, FileScreenObjects_Type10,
        FileScreenObjects_Type10, FileScreenObjects_Type10, FileScreenObjects_Type10, FileScreenObjects_Type15,
        FileScreenObjects_Type16, FileScreenObjects_Type17, FileScreenObjects_Type18, FileScreenObjects_Type19,
        FileScreenObjects_Type19, FileScreenObjects_Type21, FileScreenObjects_Type21, FileScreenObjects_Type23,
        FileScreenObjects_Type24, FileScreenObjects_Type25,
    };
    if (super->health == 0) {
        sub_0808EFF0(this);
    }
    FileScreenObjects_Types[super->type](this);
    if (super->animIndex < 64) {
        UpdateAnimationSingleFrame(super);
    }
}

void FileScreenObjects_Type23(FileScreenObjectsEntity* this) {
    static void (*const FileScreenObjects_Type23_Actions[])(FileScreenObjectsEntity*) = {
        FileScreenObjects_Type23_Init,
        FileScreenObjects_Type23_LinkPreview,
    };
    FileScreenObjects_Type23_Actions[super->action](this);
}

void FileScreenObjects_Type23_Init(FileScreenObjectsEntity* this) {
    LoadSwapGFX(super, 1, 2);
    super->palette.b.b0 = 0xF;
    super->spriteSettings.draw = 0;
    super->type2 = 0xFF;
    super->action = 1;
}

void FileScreenObjects_Type23_LinkPreview(FileScreenObjectsEntity* this) {
    u32 var0;
    u32 offset;

    if (!sub_0808E950()) {
        s32 var2 = -1;
        super->type2 = var2;
        this->unk_68 = var2;
        this->unk_6a = var2;
        super->spriteSettings.draw = 0;
        return;
    }

    if (super->type2 != gMapDataBottomSpecial.unk6) {
        super->type2 = gMapDataBottomSpecial.unk6;
        this->unk_68 = CheckGlobalFlag(EZERO_1ST) == 0 ? ANIM_DEFAULT_NOCAP : ANIM_DEFAULT;
        this->unk_70 = 4;
        super->animationState = PAS_SOUTH;
        offset = gUnk_08133368[GetPlayerPalette(TRUE) - 22] & 0xFFFFFF;
        LoadPalettes(&gGlobalGfxAndPalettes[offset], 31, 1);
    }

    if (gUI.lastState == 0) {
        if (gInput.heldKeys & L_BUTTON) {
            switch (gInput.newKeys) {
                case DPAD_UP:
                    super->animationState = PAS_NORTH;
                    break;
                case DPAD_RIGHT:
                    super->animationState = PAS_EAST;
                    break;
                case DPAD_DOWN:
                    super->animationState = PAS_SOUTH;
                    break;
                case DPAD_LEFT:
                    super->animationState = PAS_WEST;
                    break;
                case B_BUTTON:
                    this->unk_70 = this->unk_70 ? 0 : 4;
                    break;
            }
        }
    }

    super->spriteSettings.flipX = super->animationState == 3;
    var0 = this->unk_68 + this->unk_70 + super->animationState;
    if (this->unk_6a != var0) {
        this->unk_6a = var0;
        super->spriteIndex = var0 >> 8;
        InitAnimationForceUpdate(super, (u8)var0);
    }

    super->spriteSettings.draw = 2;
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

void FileScreenObjects_Type24(FileScreenObjectsEntity* this) {
    if (super->action == 0) {
        super->action = 1;
#ifdef EU
        super->spriteIndex = 0x141;
#else
        super->spriteIndex = 0x142;
#endif
        super->type2 = 0xFF;
        LoadSwapGFX(super, 1, 3);
    }

    if (sub_0808E950()) {
        s32 i;
        for (i = 6; i != 0; i--) {
            if (GetInventoryValue(i)) {
                break;
            }
        }

        if (i != 0) {
            if (super->type2 != i) {
                InitAnimationForceUpdate(super, i);
            }
            super->spriteSettings.draw = 2;
            return;
        }
    }

    super->spriteSettings.draw = 0;
}

void FileScreenObjects_Type25(FileScreenObjectsEntity* this) {
    if (sub_0808E950() && gSave.saw_staffroll) {
        super->spriteSettings.draw = 2;
    } else {
        super->spriteSettings.draw = 0;
    }
}

void FileScreenObjects_Type0(FileScreenObjectsEntity* this) {
    u32 var0;
    u32 var1;

    if (super->type == 3) {
        if (gSaveHeader->language > LANGUAGE_EN) {
            super->spriteSettings.draw = 2;
        } else {
            super->spriteSettings.draw = 0;
        }
    }

    if (super->type == gMapDataBottomSpecial.unk6) {
        var0 = 12;
        var1 = 1;
    } else {
        if (gUI.lastState == 5 && super->type == gMapDataBottomSpecial.unk7) {
            var0 = 13;
            var1 = 2;
        } else {
            var0 = 14;
            var1 = 2;
        }
    }

    super->palette.b.b0 = var0;
    super->spriteRendering.b3 = var1;
    sub_0808EABC(this);
    gMapDataBottomSpecial.isTransitioning |= sub_0808EF6C(this);
}

void sub_0808EABC(FileScreenObjectsEntity* this) {
    s32 var0 = -72;
    s32 var1 = super->type * 32 + 40;
    s32 var2 = gMapDataBottomSpecial.unk6 == super->type;
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
            switch (gGenericMenu.unk10.a[super->type]) {
                case 0:
                    var0 = 42;
                    var1 = 40;
                    break;
                case 1:
                case 2:
                    var0 = 20;
                    var1 = 144;
                    var1 -= (gGenericMenu.unk16 - gGenericMenu.unk10.a[super->type]) * 32;
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

    this->unk_68 = var0;
    this->unk_6a = var1;
}

void FileScreenObjects_Type15(FileScreenObjectsEntity* this) {
    Entity* entity = sub_0808EC80(gMapDataBottomSpecial.unk6);
    if (entity != NULL) {
        super->x.WORD = entity->x.WORD;
        super->y.WORD = entity->y.WORD;
        super->spriteRendering.b3 = entity->spriteRendering.b3;
        SortEntityBelow(entity, super);
    } else {
        super->x.HALF.HI = 0xF000;
        super->y.HALF.HI = 0xF000;
    }
}

void FileScreenObjects_Type16(FileScreenObjectsEntity* this) {
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
                SortEntityBelow(entity, super);
                super->spriteRendering.b3 = entity->spriteRendering.b3;
                x = entity->x.HALF.HI;
                y = entity->y.HALF.HI;
            }
            break;
    }

    super->x.HALF.HI = x;
    super->y.HALF.HI = y;
}

static Entity* sub_0808EC80(s32 form) {
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

void FileScreenObjects_Type4(FileScreenObjectsEntity* this) {
    static const struct_08121CD4 gUnk_08121CD4[][4] = {
        { { 0x9, 0x18, 0xb0 }, { 0x9, 0x60, 0xb0 }, { 0x9, 0xa8, 0xb0 }, { 0x9, 0x40, 0xb0 } },
        { { 0x0, 0x18, 0x90 }, { 0x1, 0x60, 0x90 }, { 0x2, 0xa8, 0x90 }, { 0x9, 0x40, 0xb0 } },
        { { 0x9, 0x18, 0xb0 }, { 0x9, 0x60, 0xb0 }, { 0x9, 0xa8, 0xb0 }, { 0x4, 0x14, 0x90 } },
        { { 0x9, 0x18, 0xb0 }, { 0x9, 0x60, 0xb0 }, { 0x1, 0x88, 0x90 }, { 0x0, 0x40, 0x90 } },
        { { 0x0, 0x18, 0x90 }, { 0x9, 0x60, 0xb0 }, { 0x9, 0xa8, 0xb0 }, { 0x9, 0x40, 0xb0 } }
    };
    s32 var0;
    s32 var1;
    s32 var2;
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

    var2 = super->type - 4;
    var3 = &gUnk_08121CD4[var1][var2];
    this->unk_68 = var3->unk1;
    this->unk_6a = var3->unk2;
    if (var3->unk0 == var0) {
        super->palette.b.b0 = 13;
    } else {
        super->palette.b.b0 = 14;
    }

    gMapDataBottomSpecial.isTransitioning |= sub_0808EF6C(this);
}

void FileScreenObjects_Type8(FileScreenObjectsEntity* this) {
    s32 y = 255;
    if (gUI.lastState == 1 && gGenericMenu.unk10.a[1] != 5) {
        super->x.HALF.HI = gGenericMenu.unk10.a[0] * 16 + 28;
        y = gGenericMenu.unk10.a[1] * 16 + 58;
    }
    super->y.HALF.HI = y;
}

void FileScreenObjects_Type9(FileScreenObjectsEntity* this) {
    static const s8 gUnk_08121D10[] = {
        0, -1, -3, -2, -2, -1, 0, 0,
    };
    s32 y;
    if (gUI.lastState != 1) {
        this->unk_68 = 27;
        y = -10;
    } else {
        u32 var0 = gGenericMenu.unk10.a[3];
        if (var0 > 5) {
            var0 = 5;
        }
        this->unk_68 = var0 * 8 + 27;
        y = 24;
    }

    super->y.HALF.HI = y;
    this->unk_6a = y;
    super->subtimer++;
    super->spriteOffsetY = gUnk_08121D10[(super->subtimer / 4) & 0x7];
    sub_0808EF6C(this);
}

void FileScreenObjects_Type10(FileScreenObjectsEntity* this) {
    static const u16 gUnk_08121D18[][8] = { { 0x2c, 0x54, 0x7c, 0xa4, 0xcc, 0x0, 0x0, 0x0 },
                                            { 0xfff, 0x2e, 0x62, 0x96, 0xca, 0x0, 0x0, 0x0 } };
    static const u8 gUnk_08121D38[][8] = {
        { 12, 13, 14, 16, 17, 0, 0, 0 },
        { -1, 14, 15, 16, 17, 0, 0, 0 },
    };
    s32 var0, var1, var2;

    var0 = ((SaveHeader*)0x2000000)->language != 0;
    var1 = super->type - 10;
    super->frameIndex = gUnk_08121D38[var0][var1];
    super->x.HALF.HI = gUnk_08121D18[var0][var1];
    this->unk_68 = gUnk_08121D18[var0][var1];
    var1 -= var0;
    if (gUI.lastState != 1) {
        var1 = 128;
        var2 = 176;
    } else {
        var2 = 140;
    }

    this->unk_6a = var2;
    super->palette.b.b0 = gGenericMenu.unk10.a[1] == 5 && var1 == gGenericMenu.unk10.a[2] ? 11 : 9;
    gMapDataBottomSpecial.isTransitioning |= sub_0808EF6C(this);
}

void FileScreenObjects_Type17(FileScreenObjectsEntity* this) {
}

void FileScreenObjects_Type18(FileScreenObjectsEntity* this) {
    static const u8 gUnk_08121D48[] = { 0x28, 0x27, 0x28, 0x28, 0x28, 0x2a, 0x29, 0x28, 0xff, 0x0, 0x0, 0x0 };
    super->timer = gUI.lastState;
    super->frameIndex = gUnk_08121D48[super->timer];
    if (super->timer != 2) {
        this->unk_68 = 96;
    } else {
        this->unk_68 = -96;
    }
    sub_0808EF6C(this);
}

void FileScreenObjects_Type19(FileScreenObjectsEntity* this) {
    s32 var0;
    if (gUI.lastState != 3) {
        super->spriteSettings.draw = 0;
    } else {
        super->spriteSettings.draw = 2;
        var0 = super->type - 19;
        super->palette.b.b0 = gMenu.column_idx == var0 ? 4 : 3;
    }
}

void FileScreenObjects_Type21(FileScreenObjectsEntity* this) {
    s32 var0;
    if (gUI.lastState != 3) {
        super->spriteSettings.draw = 0;
    } else {
        super->spriteSettings.draw = 2;
        if (super->type == 21) {
            var0 = ((SaveHeader*)0x2000000)->msg_speed;
        } else {
            var0 = ((SaveHeader*)0x2000000)->brightness;
        }
        super->frameIndex = super->lastFrameIndex + var0;
    }
}

static u32 sub_0808EF6C(FileScreenObjectsEntity* this) {
    s32 var0;
    u32 var1;
    s32 var2;
    u32 var3;
    s32 var4;
    s16 var5;
    s16 var6;
    s32 var7;

    var6 = this->unk_68;
    var0 = var6 - super->x.HALF.HI;
    var1 = var0;
    if (var0 < 0) {
        var1 = -var0;
    }
    if (var1 < 2) {
        super->x.WORD = var6 << 16;
        var0 = 0;
    }

    var5 = this->unk_6a;
    var2 = var5 - super->y.HALF.HI;
    var3 = var2;
    if (var2 < 0) {
        var3 = -var2;
    }
    if (var3 < 2) {
        super->y.WORD = var5 << 16;
        var2 = 0;
    }

    if ((var0 | var2) == 0) {
        return 0;
    }

    var4 = var7 = CalcDistance(var0, var2);
    var4 += 128;
    var7 = var4 + var7 * 16;
    if (this->unk_6c < var7) {
        var7 = this->unk_6c;
    }
    super->speed = var7;
    super->direction = CalculateDirectionFromOffsets(var0, var2) >> 3;
    LinearMoveUpdate(super);
    return 1;
}

static void sub_0808EFF0(FileScreenObjectsEntity* this) {
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

    super->spriteSettings.draw = 2;
    super->speed = 0x400;
    super->health = 1;
    super->frameIndex = 0xFF;
    super->animIndex = 0xFF;
    var0 = &gUnk_08121D54[super->type];
    super->x.HALF.HI = var0->unk2;
    this->unk_68 = var0->unk2;
    super->y.HALF.HI = var0->unk4;
    this->unk_6a = var0->unk4;
    super->spriteRendering.b3 = var0->unk6_0;
    super->spritePriority.b0 = var0->unk6_3;
    super->spriteOrientation.flipY = var0->unk6_6;
    this->unk_6c = var0->unk0;
    var1 = var0->unk7;
    if (var1 & 0x80) {
        var1 &= ~(0x80);
        super->frameIndex = var1;
        super->lastFrameIndex = var1;
    } else {
        InitAnimationForceUpdate(super, var1);
    }
}
