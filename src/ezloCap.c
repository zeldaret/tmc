#include "audio.h"
#include "global.h"
#include "entity.h"
#include "functions.h"
#include "flags.h"
#include "save.h"
#include "script.h"

extern Hitbox gUnk_080FD170;

extern u16* gUnk_08114144;

extern u32 gUnk_081141A4[];
extern u8 gUnk_081141E4[];

extern Hitbox gUnk_08114154;
extern void gUnk_08016030; // Cutscene data type?
extern void gUnk_0801606C; // Cutscene data type?

extern void gUnk_081141F4; // tiles that are changed?

extern void sub_0809623C(Entity*);
extern void sub_08096260(Entity*);

void EzloCap(Entity* this) {
    if (this->action == 0) {
        this->action += 1;
        sub_0805E3A0(this, 2);
        sub_0807DD50(this);
    }
    sub_0807DDAC(this, 0);
    sub_0807DDE4(this);
    UpdateAnimationSingleFrame(this);
}

NONMATCH("asm/non_matching/ezloCap/sub_0806D8A0.inc", void sub_0806D8A0(Entity* this, u32 param_2)) {
}
END_NONMATCH

NONMATCH("asm/non_matching/ezloCap/sub_0806D908.inc", void sub_0806D908(Entity* this)) {
}
END_NONMATCH

void sub_0806D944(Entity* this) {
    this->spriteSettings.b.flipX = 0;
    if (this->x.WORD <= gPlayerEntity.x.WORD) {
        this->spriteSettings.b.flipX = 1;
    }
}

void sub_0806D96C(Entity* this) {
    Entity* fx = CreateFx(this, 0x42, 0);
    if (fx != NULL) {
        fx->spritePriority.b0 = 1;
        PositionRelative(this, fx, 0, 0xFFE80000);
    }
}

void sub_0806D9A4(Entity* this) {
    if (this->x.WORD <= gPlayerEntity.x.WORD) {
        gPlayerEntity.spriteSettings.b.flipX = 0;
    } else {
        gPlayerEntity.spriteSettings.b.flipX = 1;
    }
    gPlayerEntity.animationState = 4;
}

void NPC4E(Entity* this) {
    if (this->action == 0) {
        this->action = 1;
        this->spriteSettings.b.draw = 4;
        this->hitbox = &gUnk_080FD170;
        sub_0807DD50(this);
    } else {
        sub_0807DD94(this, 0);
    }
}

NONMATCH("asm/non_matching/ezloCap/sub_0806DA04.inc", void sub_0806DA04(Entity* this, u32 param_2)) {
    u8 direction =
        sub_080045D4(this->x.HALF.HI, this->y.HALF.HI, (int)gPlayerEntity.x.HALF.HI, (int)gPlayerEntity.y.HALF.HI);
    this->direction = direction;

    this->animationState =
        (this->animationState & 0x80) |
        gUnk_08114144[(((direction) << 0x18) >> 0x19)]; // somehow the cast from u8 to u32 of direction is an issue here
}
END_NONMATCH

void sub_0806DA1C(Entity* this, u32* param_2) {
    sub_0808091C((ScreenTransitionData*)(gUnk_081141A4)[param_2[1]], (u32)(gUnk_081141E4[param_2[1]]));
}

// Returns the kingstone id?
u8 sub_0806DA3C(Entity* this) {
    u32 result;

    switch (this->type) {
        default:
            result = 0;
            break;
        case 1:
            result = 1;
            break;
        case 2:
            result = 2;
            break;
        case 3:
            result = 3;
            break;
        case 4:
            result = 4;
            break;
        case 5:
            result = 5;
            break;
        case 11:
            result = 9;
            break;
        case 6:
        case 7:
        case 8:
        case 9:
        case 10:
            result = sub_0801E99C(this);
            break;
    }
    return result;
}

// Check whether a kingstone fusion is possible and store the result somewhere in param_2?
void sub_0806DAAC(Entity* this, u32 param_2) {
    u32 uVar1;
    uVar1 = CheckKinstoneFused(sub_0806DA3C(this));
    *(u32*)(param_2 + 0x14) = uVar1;
    gUnk_02033280.unk_07 |= 1;
}

// maybe actually execute the keystone fusion?
void sub_0806DAD0(Entity* this) {
    sub_08078790(this, sub_0806DA3C(this));
}

void sub_0806DAE8(Entity* this) {
    switch (this->type - 1) {
        case 0:
            SetLocalFlag(0xee);
            break;
        case 1:
            SetLocalFlag(0xef);
            break;
        case 2:
            SetLocalFlag(0xf0);
            break;
        case 3:
            SetLocalFlag(0xf1);
            break;
        case 4:
            SetLocalFlag(0xf2);
            break;
    }

    SoundReq(SFX_TASK_COMPLETE);
}

// Unknown param_2 struct
void sub_0806DB44(Entity* this, u32* param_2) {
    param_2[5] = 0;

    if (CheckLocalFlag(0xee) != 0 && CheckLocalFlag(0xef) != 0 && CheckLocalFlag(0xf0) != 0 &&
        CheckLocalFlag(0xf1) != 0 && CheckLocalFlag(0xf2) != 0) {
        param_2[5] = 1;
    }
}

void sub_0806DB84(
    Entity* this,
    u8 unused) { // The unused param just had to be added, so that a mov r1, #0 in NPC4E_Fusion is matching correctly
    Entity* ent;
    this->hitbox = &gUnk_08114154;
    ent = CreateObject(0x3e, 4, 0);
    if (ent != NULL) {
        PositionRelative(this, ent, -0x80000, 0);
        *(ScriptExecutionContext**)&ent->cutsceneBeh = StartCutscene(ent, &gUnk_08016030);
    }
    ent = CreateObject(0x3e, 5, 0);
    if (ent != NULL) {
        PositionRelative(this, ent, 0x80000, 0);
        *(ScriptExecutionContext**)&ent->cutsceneBeh = StartCutscene(ent, &gUnk_0801606C);
    }
}

u32 sub_0806DBF4(u32 param_1) {
    switch (param_1) {
        case 1:
        case 2:
        case 3:
        case 4:
        case 6:
            param_1 = 1;
            if (GetInventoryValue(2) != 0) {
                param_1 = 2;
            }
            if (GetInventoryValue(3) != 0) {
                param_1 = 3;
            }
            if (GetInventoryValue(4) != 0) {
                param_1 = 4;
            }
            if (GetInventoryValue(6) != 0) {
                param_1 = 6;
            }
            break;
    }
    return param_1;
}

void sub_0806DC3C(Entity* this) {
    this->field_0x68.HALF.LO = gSave.stats.itemOnA;
    this->field_0x68.HALF.HI = gSave.stats.itemOnB;
}

void sub_0806DC58(Entity* this) {
    ForceEquipItem(sub_0806DBF4(this->field_0x68.HALF.LO), 0);
    ForceEquipItem(sub_0806DBF4(this->field_0x68.HALF.HI), 1);
}

void sub_0806DC7C() {
    u16* tiles = &gUnk_081141F4;
    while (*tiles != 0) {
        u32 tile = (u32)*tiles;
        tiles = tiles + 1;
        SetTileType(0x4072, tile, 1);
    }
}

void sub_0806DCA0() {
    u16 uVar1;
    u16* tiles;

    tiles = &gUnk_081141F4;
    while (*tiles != 0) {
        u16 tile = *tiles;
        tiles = tiles + 1;
        sub_0807BA8C((u32)tile, 1);
    }
}

void sub_0806DCC0() {
    gScreenTransition.field_0x20 = 0x7c8;
    gScreenTransition.field_0x22 = 0xf8;
}

void NPC4E_Fusion(Entity* this) {
    if (this->action == 0) {
        this->action += 1;
        switch (this->type) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
                sub_0809623C(this);
                break;
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
                sub_08096260(this);
                break;
            case 11:
                sub_0806DB84(this, 0);
                this->hitbox = NULL;
                break;
        }
    }
}
