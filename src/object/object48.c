#include "global.h"
#include "entity.h"
#include "flags.h"
#include "functions.h"
#include "main.h"
#include "menu.h"
#include "npc.h"
#include "position.h"
#include "readKeyInput.h"
#include "structures.h"

extern int sub_0807A094(int);
extern void LoadPalettes(const u8*, int, int);
extern u32 sub_080041EC(int, int);
extern u32 sub_080045DA(int, int);

static bool32 sub_0808E950(void);
static void sub_0808EABC(Entity*);
static Entity* sub_0808EC80(int);
static u32 sub_0808EF6C(Entity*);
static void sub_0808EFF0(Entity*);

typedef struct {
    u8 unk0;
    u8 unk1;
    u8 unk2;
} PACKED struct_08121CD4;

typedef struct {
    u16 unk0;
    u16 unk2;
    u16 unk4;
    u8 unk6_0 : 3;
    u8 unk6_3 : 3;
    u8 unk6_6 : 2;
    u8 unk7;
} struct_08121D54;

extern void (*const gUnk_08121C64[])(Entity*);
extern void (*const gUnk_08121CCC[])(Entity*);
extern const int gUnk_08133368[];
extern const u8 gGlobalGfxAndPalettes[];
extern const struct_08121CD4 gUnk_08121CD4[][4];
extern const u8 gUnk_08121D10[];
extern const u8 gUnk_08121D38[][8];
extern const u16 gUnk_08121D18[][8];
extern const u8 gUnk_08121D48[];
extern const struct_08121D54 gUnk_08121D54[];

void Object48(Entity* this) {
    if (this->currentHealth == 0) {
        sub_0808EFF0(this);
    }
    gUnk_08121C64[this->entityType.form](this);
    if (this->animIndex < 64) {
        UpdateAnimationSingleFrame(this);
    }
}

void sub_0808E7D8(Entity* this) {
    gUnk_08121CCC[this->action](this);
}

void sub_0808E7F0(Entity* this) {
    sub_080AE008(this, 1, 2);
    this->palette.b.b0 = 0xF;
    this->spriteSettings.b.draw = 0;
    this->entityType.parameter = 0xFF;
    this->action = 1;
}

void sub_0808E818(Entity* this) {
    u32 var0;
    u32 var1;

    if (!sub_0808E950()) {
        int var2 = -1;
        this->entityType.parameter = var2;
        this->field_0x68.HWORD = var2;
        this->field_0x6a.HWORD = var2;
        this->spriteSettings.b.draw = 0;
        return;
    }

    if (this->entityType.parameter != gUnk_02019EE0.unk6) {
        this->entityType.parameter = gUnk_02019EE0.unk6;
        this->field_0x68.HWORD = CheckGlobalFlag(EZERO_1ST) == 0 ? 0x400 : 0x100;
        this->field_0x70.BYTES.byte0 = 4;
        this->animationState = 2;
        var1 = gUnk_08133368[sub_0807A094(1) - 22] & 0xFFFFFF;
        LoadPalettes(&gGlobalGfxAndPalettes[var1], 31, 1);
    }

    if (gUnk_02032EC0.transitionType == 0) {
        if (gUnk_03000FF0.heldKeys & L_BUTTON) {
            switch (gUnk_03000FF0.newKeys) {
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

    this->spriteSettings.b.flipX = this->animationState == 3;
    var0 = this->field_0x68.HWORD + this->field_0x70.BYTES.byte0 + this->animationState;
    if (this->field_0x6a.HWORD != var0) {
        this->field_0x6a.HWORD = var0;
        this->spriteIndex = var0 >> 8;
        InitAnimationForceUpdate(this, (u8)var0);
    }

    this->spriteSettings.b.draw = 2;
}

static bool32 sub_0808E950(void) {
    bool32 result = FALSE;
    switch (gUnk_02032EC0.transitionType) {
        case 0:
        case 4:
        case 5:
        case 6:
        case 7:
            result = gUnk_02019EE0.unk8[gUnk_02019EE0.unk6] == 1;
            break;
    }
    return result;
}

void sub_0808E988(Entity* this) {
    if (this->action == 0) {
        this->action = 1;
        this->spriteIndex = 0x142;
        this->entityType.parameter = 0xFF;
        sub_080AE008(this, 1, 3);
    }

    if (sub_0808E950()) {
        int i;
        for (i = 6; i != 0; i--) {
            if (GetInventoryValue(i)) {
                break;
            }
        }

        if (i != 0) {
            if (this->entityType.parameter != i) {
                InitAnimationForceUpdate(this, i);
            }
            this->spriteSettings.b.draw = 2;
            return;
        }
    }

    this->spriteSettings.b.draw = 0;
}

void sub_0808E9F4(Entity* this) {
    if (sub_0808E950() && gUnk_02002A40.unk6) {
        this->spriteSettings.b.draw = 2;
    } else {
        this->spriteSettings.b.draw = 0;
    }
}

void sub_0808EA28(Entity* this) {
    u32 var0;
    u32 var1;

    if (this->entityType.form == 3) {
        if (((struct_02000000*)0x2000000)->gameLanguage > 1) {
            this->spriteSettings.b.draw = 2;
        } else {
            this->spriteSettings.b.draw = 0;
        }
    }

    if (this->entityType.form == gUnk_02019EE0.unk6) {
        var0 = 12;
        var1 = 1;
    } else {
        if (gUnk_02032EC0.transitionType == 5 && this->entityType.form == gUnk_02019EE0.unk7) {
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
    gUnk_02019EE0.unk0 |= sub_0808EF6C(this);
}

void sub_0808EABC(Entity* this) {
    int var0 = -72;
    int var1 = this->entityType.form * 32 + 40;
    int var2 = gUnk_02019EE0.unk6 == this->entityType.form;
    switch (gUnk_02032EC0.transitionType) {
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
            switch (gMenu.unk10[this->entityType.form]) {
                case 0:
                    var0 = 42;
                    var1 = 40;
                    break;
                case 1:
                case 2:
                    var0 = 20;
                    var1 = 144;
                    var1 -= (gMenu.unk16 - gMenu.unk10[this->entityType.form]) * 32;
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
    Entity* entity = sub_0808EC80(gUnk_02019EE0.unk6);
    if (entity) {
        this->x.WORD = entity->x.WORD;
        this->y.WORD = entity->y.WORD;
        this->spriteRendering.b3 = entity->spriteRendering.b3;
        sub_0806FAD8(entity, this);
    } else {
        this->x.HALF.HI = 0xF000;
        this->y.HALF.HI = 0xF000;
    }
}

void sub_0808EBB8(Entity* this) {
    u32 var0;
    u32 x, y;
    Entity* entity;

    switch (gUnk_02032EC0.transitionType) {
        case 4:
            var0 = gMenu.field_0x1 + 4;
            break;
        case 5:
            var0 = 2;
            break;
        case 6:
            var0 = gMenu.field_0x1 == 0 ? 7 : 6;
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
            y = ((struct_02000000*)0x2000000)->gameLanguage * 16 + 24;
            x = 112;
            break;
        case 2:
            var0 = gUnk_02019EE0.unk7;
            if (var0 == 4) {
                var0 = 7;
            }
            // Fall through
        default:
            entity = sub_0808EC80(var0);
            if (entity) {
                sub_0806FAD8(entity, this);
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
    Entity* entityA = &gUnk_03003DA0;
    Entity* entityB = entityA->next;
    while (entityB != entityA) {
        if ((entityB->entityType.type == 0x6 && entityB->entityType.subtype == 0x48) &&
            form == entityB->entityType.form) {
            return entityB;
        }
        entityB = entityB->next;
    }
    return NULL;
}

void sub_0808ECBC(Entity* this) {
    int var0;
    int var1;
    int var2;
    const struct_08121CD4* var3;

    var0 = gMenu.field_0x1;
    switch (gUnk_02032EC0.transitionType) {
        case 4:
            var1 = 1;
            break;
        case 5:
            var0 = gUnk_02019EE0.unk7;
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

    var2 = this->entityType.form - 4;
    var3 = &gUnk_08121CD4[var1][var2];
    this->field_0x68.HWORD = var3->unk1;
    this->field_0x6a.HWORD = var3->unk2;
    if (var3->unk0 == var0) {
        this->palette.b.b0 = 13;
    } else {
        this->palette.b.b0 = 14;
    }

    gUnk_02019EE0.unk0 |= sub_0808EF6C(this);
}

void sub_0808ED64(Entity* this) {
    int y = 255;
    if (gUnk_02032EC0.transitionType == 1 && gMenu.unk10[1] != 5) {
        this->x.HALF.HI = gMenu.unk10[0] * 16 + 28;
        y = gMenu.unk10[1] * 16 + 58;
    }
    this->y.HALF.HI = y;
}

void sub_0808ED98(Entity* this) {
    int y;
    if (gUnk_02032EC0.transitionType != 1) {
        this->field_0x68.HWORD = 27;
        y = -10;
    } else {
        u32 var0 = gMenu.unk13;
        if (var0 > 5) {
            var0 = 5;
        }
        this->field_0x68.HWORD = var0 * 8 + 27;
        y = 24;
    }

    this->y.HALF.HI = y;
    this->field_0x6a.HWORD = y;
    this->field_0xf++;
    this->spriteOffsetY = gUnk_08121D10[(this->field_0xf / 4) & 0x7];
    sub_0808EF6C(this);
}

void sub_0808EE00(Entity* this) {
    int var0, var1, var2;

    var0 = ((struct_02000000*)0x2000000)->gameLanguage != 0;
    var1 = this->entityType.form - 10;
    this->frameIndex = gUnk_08121D38[var0][var1];
    this->x.HALF.HI = gUnk_08121D18[var0][var1];
    this->field_0x68.HWORD = gUnk_08121D18[var0][var1];
    var1 -= var0;
    if (gUnk_02032EC0.transitionType != 1) {
        var1 = 128;
        var2 = 176;
    } else {
        var2 = 140;
    }

    this->field_0x6a.HWORD = var2;
    this->palette.b.b0 = gMenu.unk10[1] == 5 && var1 == gMenu.field_0x12 ? 11 : 9;
    gUnk_02019EE0.unk0 |= sub_0808EF6C(this);
}

void nullsub_522(Entity* this) {
}

void sub_0808EE98(Entity* this) {
    this->actionDelay = gUnk_02032EC0.transitionType;
    this->frameIndex = gUnk_08121D48[this->actionDelay];
    if (this->actionDelay != 2) {
        this->field_0x68.HWORD = 96;
    } else {
        this->field_0x68.HWORD = -96;
    }
    sub_0808EF6C(this);
}

void sub_0808EED8(Entity* this) {
    int var0;
    if (gUnk_02032EC0.transitionType != 3) {
        this->spriteSettings.b.draw = 0;
    } else {
        this->spriteSettings.b.draw = 2;
        var0 = this->entityType.form - 19;
        this->palette.b.b0 = gMenu.field_0x1 == var0 ? 4 : 3;
    }
}

void sub_0808EF24(Entity* this) {
    int var0;
    if (gUnk_02032EC0.transitionType != 3) {
        this->spriteSettings.b.draw = 0;
    } else {
        this->spriteSettings.b.draw = 2;
        if (this->entityType.form == 21) {
            var0 = ((struct_02000000*)0x2000000)->messageSpeed;
        } else {
            var0 = ((struct_02000000*)0x2000000)->brightnessPref;
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
    this->nonPlanarMovement = var7;
    this->direction = sub_080045DA(var0, var2) >> 3;
    sub_0806F69C(this);
    return 1;
}

static void sub_0808EFF0(Entity* this) {
    const struct_08121D54* var0;
    int var1;

    this->spriteSettings.b.draw = 2;
    this->nonPlanarMovement = 0x400;
    this->currentHealth = 1;
    this->frameIndex = 0xFF;
    this->animIndex = 0xFF;
    var0 = &gUnk_08121D54[this->entityType.form];
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
        var1 &= 0x7F;
        this->frameIndex = var1;
        this->lastFrameIndex = var1;
    } else {
        InitAnimationForceUpdate(this, var1);
    }
}
