/**
 * @file treeHidingPortal.c
 * @ingroup Objects
 *
 * @brief Tree Hiding Portal object
 */
#include "effects.h"
#include "entity.h"
#include "flags.h"
#include "functions.h"
#include "object.h"
#include "player.h"
#include "room.h"
#include "sound.h"
#include "tiles.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused1[30];
    /*0x86*/ u16 unk_86;
} TreeHidingPortalEntity;

extern const s16 gUnk_080B4468[];

void TreeHidingPortal_Init(TreeHidingPortalEntity* this);
void TreeHidingPortal_Action1(TreeHidingPortalEntity* this);
void TreeHidingPortal_Action2(TreeHidingPortalEntity* this);
void TreeHidingPortal_Action3(TreeHidingPortalEntity* this);

static void sub_0809E96C(TreeHidingPortalEntity* this);
static u32 sub_0809E9A0(void);
static void sub_0809E918(TreeHidingPortalEntity* this);

void TreeHidingPortal(TreeHidingPortalEntity* this) {
    static void (*const TreeHidingPortal_Actions[])(TreeHidingPortalEntity*) = {
        TreeHidingPortal_Init,
        TreeHidingPortal_Action1,
        TreeHidingPortal_Action2,
        TreeHidingPortal_Action3,
    };
    TreeHidingPortal_Actions[super->action](this);
}

void TreeHidingPortal_Init(TreeHidingPortalEntity* this) {
    if (CheckFlags(this->unk_86)) {
        sub_0809E96C(this);
        DeleteThisEntity();
    }
    super->action = 1;
    super->collisionLayer = 2;
    UpdateSpriteForCollisionLayer(super);
}

void TreeHidingPortal_Action1(TreeHidingPortalEntity* this) {

    if (sub_0800419C(super, &gPlayerEntity.base, 0x30, 0x30)) {
        if (CheckGlobalFlag(EZERO_1ST)) {
            if (((gRoomTransition.frameCount & 3) == 0)) {
                CreateSparkle(super);
            }
        }
    }
    if (sub_0809E9A0() == ACT_TILE_84) {
        super->action = 2;
        super->timer = 15;
        SetPlayerControl(1);
    }
}

void TreeHidingPortal_Action2(TreeHidingPortalEntity* this) {
    if (--super->timer == 0) {
        super->action = 3;
        super->timer = 60;
        super->spriteSettings.draw = 0;
        sub_0809E96C(this);
        sub_0809E918(this);
    }
}

void TreeHidingPortal_Action3(TreeHidingPortalEntity* this) {
    if (--super->timer == 0) {
        SetFlag(this->unk_86);
        SetPlayerControl(0);
        SoundReq(SFX_SECRET_BIG);
        DeleteThisEntity();
    }
}

static void sub_0809E918(TreeHidingPortalEntity* this) {
    static const s16 gUnk_08124364[] = {
        0, -4, 8,  -4,  16, -4, 22, -4,  -8, -4,  -16, -4,  -22, -4,  0,  -12, 0,   4,   8,     -12,
        8, 4,  -8, -12, -8, 4,  8,  -16, -8, -16, 12,  -16, -12, -16, 16, -14, -16, -14, -1000, 0,
    };
    Entity* fx;
    const s16* i = gUnk_08124364;
    while (*i != -1000) {
        fx = CreateFx(super, FX_BUSH, 0);
        if (fx != NULL) {
            fx->x.HALF.HI += i[0];
            fx->y.HALF.HI += i[1];
            fx->collisionLayer = 2;
            UpdateSpriteForCollisionLayer(fx);
        }
        i += sizeof(s16);
    }
}

static void sub_0809E96C(TreeHidingPortalEntity* this) {
    CreateMinishEntrance(COORD_TO_TILE_OFFSET(super, 0x20, 0x8));
}

static u32 sub_0809E9A0(void) {
    u32 actTile;
    const s16* ptr;

    if (gPlayerEntity.base.action != PLAYER_BOUNCE) {
        actTile = ACT_TILE_0;
    } else {
        ptr = &gUnk_080B4468[gPlayerEntity.base.animationState & 6];
        actTile = GetActTileAtTilePos(COORD_TO_TILE_OFFSET(&gPlayerEntity.base, -ptr[0], -ptr[1]), 1);
    }

    return actTile;
}
