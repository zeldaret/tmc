/**
 * @file mazaalBossObject.c
 * @ingroup Objects
 *
 * @brief Mazaal Boss object
 */
#include "enemy.h"
#include "entity.h"
#include "functions.h"
#include "item.h"
#include "object.h"
#include "player.h"
#include "room.h"
#include "screen.h"
#include "sound.h"

extern u16 script_MazaalBossObjectMazaal[];

typedef struct {
    /* 0x00 */ Entity base;
    /* 0x68 */ u8 unk_68[0x1C];
    /* 0x84 */ ScriptExecutionContext* cutsceneBeh;
} MazaalBossObjectEntity;

enum MazaalBossObjectActions {
    /* 0 */ MAZAAL_BOSS_OBJECT_ACTION_0,
    /* 1 */ MAZAAL_BOSS_OBJECT_ACTION_1,
    /* 2 */ MAZAAL_BOSS_OBJECT_ACTION_2,
    /* 3 */ MAZAAL_BOSS_OBJECT_ACTION_3,
    /* 4 */ MAZAAL_BOSS_OBJECT_ACTION_4,
    /* 5 */ MAZAAL_BOSS_OBJECT_ACTION_5,
    /* 6 */ MAZAAL_BOSS_OBJECT_ACTION_6,
    /* 7 */ MAZAAL_BOSS_OBJECT_ACTION_7,
    /* 8 */ MAZAAL_BOSS_OBJECT_ACTION_8,
};

void MazaalBossObject_Action0(MazaalBossObjectEntity* this); // 0809AB04
void MazaalBossObject_Action1(MazaalBossObjectEntity* this); // 0809ABA4
void MazaalBossObject_Action2(MazaalBossObjectEntity* this); // 0809ABB0
void MazaalBossObject_Action3(MazaalBossObjectEntity* this); // 0809ABD4
void MazaalBossObject_Action4(MazaalBossObjectEntity* this); // 0809ABF4
void MazaalBossObject_Action5(MazaalBossObjectEntity* this); // 0809AC3C
void MazaalBossObject_Action6(MazaalBossObjectEntity* this); // 0809ACA0
void MazaalBossObject_Action7(MazaalBossObjectEntity* this); // 0809ACCC
void MazaalBossObject_Action8(MazaalBossObjectEntity* this); // 0809ACE8
void sub_0809AD68(MazaalBossObjectEntity* this);             // 0809AD68
void sub_0809AD8C(MazaalBossObjectEntity* this);             // 0809AD8C

void MazaalBossObject(Entity* this) {
    static void (*const MazaalBossObject_Actions[])(MazaalBossObjectEntity*) = {
        MazaalBossObject_Action0, MazaalBossObject_Action1, MazaalBossObject_Action2,
        MazaalBossObject_Action3, MazaalBossObject_Action4, MazaalBossObject_Action5,
        MazaalBossObject_Action6, MazaalBossObject_Action7, MazaalBossObject_Action8,
    };

    MazaalBossObject_Actions[this->action]((MazaalBossObjectEntity*)this);
}

void MazaalBossObject_Action0(MazaalBossObjectEntity* this) {
    Entity* mazaalHead;

    if (CheckFlags(0x31)) {
        sub_0809AD68(this);
        sub_0809AD8C(this);
        DeleteThisEntity();
    }

    mazaalHead = CreateEnemy(MAZAAL_HEAD, 0);
    if (mazaalHead == NULL) {
        return;
    }

    CopyPosition(super, mazaalHead);
    super->child = mazaalHead;

    if (gRoomTransition.field_0x38 != 0) {
        if (gRoomTransition.field_0x39 != 0) {
            DeleteThisEntity();
        }

        super->action = MAZAAL_BOSS_OBJECT_ACTION_7;
        super->spriteSettings.draw = 0;
        gRoomControls.camera_target = super;
        sub_080809D4();
    } else {
        super->action = MAZAAL_BOSS_OBJECT_ACTION_1;
        super->timer = 30;
        super->frameIndex = gRoomTransition.field_0x38;
        super->spritePriority.b0 = 7;
        super->spriteOffsetY = 0x20;

        this->cutsceneBeh = StartCutscene(super, script_MazaalBossObjectMazaal);
    }
}

void MazaalBossObject_Action1(MazaalBossObjectEntity* this) {
    ExecuteScriptForEntity(super, NULL);
}

void MazaalBossObject_Action2(MazaalBossObjectEntity* this) {
    if (--super->timer == 0) {
        super->action = MAZAAL_BOSS_OBJECT_ACTION_3;
        super->timer = 120;
        gRoomControls.camera_target = super->child;
    }
}

void MazaalBossObject_Action3(MazaalBossObjectEntity* this) {
    if (--super->timer == 0) {
        super->action = MAZAAL_BOSS_OBJECT_ACTION_4;
        super->timer = 90;
        super->child->subAction = 1;
    }
}

void MazaalBossObject_Action4(MazaalBossObjectEntity* this) {
    if (super->child->subAction > 2) {
        if (--super->timer == 0) {
            super->action = MAZAAL_BOSS_OBJECT_ACTION_5;
            super->timer = 8;
            super->subtimer = 0;
            super->spriteRendering.alphaBlend = BLDALPHA_BLEND(1, 0);

            gScreen.controls.layerFXControl =
                BLDCNT_TGT2_BG3 | BLDCNT_TGT2_BG2 | BLDCNT_TGT2_BG1 | BLDCNT_TGT2_BG0 | BLDCNT_EFFECT_BLEND;
            gScreen.controls.alphaBlend = BLDALPHA_BLEND(0x10, 0);
        }
    }
}

void MazaalBossObject_Action5(MazaalBossObjectEntity* this) {
    u32 tmp;

    if (--super->timer == 0) {
        super->timer = 8;

        tmp = ++super->subtimer;
        tmp &= 0xFF;
        gScreen.controls.alphaBlend = BLDALPHA_BLEND((0x10 - tmp) & 0xFF, tmp);

        if (super->subtimer > 15) {
            super->spriteRendering.alphaBlend = BLDALPHA_BLEND(4, 0);
            gScreen.controls.layerFXControl = 0;
            super->action = MAZAAL_BOSS_OBJECT_ACTION_6;
            super->timer = 15;
            super->spriteSettings.draw = 0;
        }
    }
}

void MazaalBossObject_Action6(MazaalBossObjectEntity* this) {
    if (--super->timer == 0) {
        super->child->subAction = 6;
        gRoomTransition.field_0x38 = 0xF1;

        DeleteEntity(super);
    }
}

void MazaalBossObject_Action7(MazaalBossObjectEntity* this) {
    if (super->child->timer == 1) {
        super->action = MAZAAL_BOSS_OBJECT_ACTION_8;
        super->subAction = 0;
        super->timer = 180;
    }
}

void MazaalBossObject_Action8(MazaalBossObjectEntity* this) {
    switch (super->subAction) {
        default:
            if (--super->timer == 0) {
                super->timer = 90;
                super->subAction = 1;
                SoundReq(SFX_SECRET_BIG);
                SetFlag(0x31);
                sub_0809AD8C(this);
            }
            break;
        case 1:
            if (--super->timer == 0) {
                super->timer = 120;
                super->subAction = 2;
                sub_0809AD68(this);
            }
            break;
        case 2:
            if (--super->timer == 0) {
                gRoomControls.camera_target = &gPlayerEntity.base;
                gPlayerState.controlMode = CONTROL_1;
                DeleteThisEntity();
            }
            break;
    }
}

void sub_0809AD68(MazaalBossObjectEntity* this) {
    LoadRoomEntityList(GetCurrentRoomProperty(super->type));
    if (GetInventoryValue(ITEM_OCARINA) != 0) {
        LoadRoomEntityList(GetCurrentRoomProperty(super->type2));
    }
}

void sub_0809AD8C(MazaalBossObjectEntity* this) {
    Entity* archway = CreateObject(ARCHWAY, 0x22, 0);

    if (archway != NULL) {
        archway->x.HALF.HI = gRoomControls.origin_x + 0xB8;
        archway->y.HALF.HI = gRoomControls.origin_y + 8;
    }
}
