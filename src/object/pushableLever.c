/**
 * @file pushableLever.c
 * @ingroup Objects
 *
 * @brief Pushable Lever object
 */
#include "functions.h"
#include "object.h"
#include "tiles.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unk_68[8];
    /*0x70*/ u16 tilePos;
    /*0x72*/ u16 tileIndex;
    /*0x74*/ u16 timer;
    /*0x76*/ u8 unk_76[16];
    /*0x86*/ u16 pushedFlag;
} PushableLeverEntity;

enum PushableLeverAction {
    INIT,
    IDLE,
    PUSHING,
};

extern void (*const PushableLever_Actions[])(PushableLeverEntity*);
extern const u16 PushableLever_Tiles[];
extern const u8 PushableLever_InitialOffsets[];
extern const u8 PushableLever_PushedOffsets[];

void PushableLever_SetIdle(PushableLeverEntity*);
bool32 PushableLever_ShouldStartPushing(PushableLeverEntity* this);
void PushableLever_SetTiles(PushableLeverEntity*);
void PushableLever_CalculateSpriteOffsets(PushableLeverEntity*);

void PushableLever(PushableLeverEntity* this) {
    PushableLever_Actions[super->action](this);
}

void PushableLever_Init(PushableLeverEntity* this) {
    super->spritePriority.b0 = 5;
    PushableLever_SetIdle(this);
}

void PushableLever_Idle(PushableLeverEntity* this) {
    if (PushableLever_ShouldStartPushing(this)) {
        super->action = PUSHING;
        super->spriteOffsetX = 0;
        super->spriteOffsetY = 0;
        SetTile(this->tileIndex, this->tilePos, super->collisionLayer);
        EnqueueSFX(SFX_16A);
        RequestPriorityDuration(super, 30);
        if (PlayerCanBeMoved()) {
            gPlayerState.pushedObject = 0x90;
            gPlayerState.queued_action = PLAYER_PUSH;
            gPlayerState.flags |= PL_BUSY;
            gPlayerEntity.base.x.HALF.LO = 0;
            gPlayerEntity.base.y.HALF.LO = 0;
            gPlayerEntity.base.direction = gPlayerEntity.base.animationState << 2;
        }
    }
}

void PushableLever_Pushing(PushableLeverEntity* this) {
    GetNextFrame(super);
    if ((super->frame & ANIM_DONE) != 0) {
        if (super->type2 == 0) {
            SetFlag(this->pushedFlag);
        } else {
            ClearFlag(this->pushedFlag);
        }
        PushableLever_SetIdle(this);
    }
}

void PushableLever_SetIdle(PushableLeverEntity* this) {
    super->action = IDLE;
    this->timer = 60;
    PushableLever_SetTiles(this);
}

void PushableLever_SetTiles(PushableLeverEntity* this) {
    if (CheckFlags(this->pushedFlag) == FALSE) {
        super->type2 = 0;
        this->tilePos = COORD_TO_TILE_OFFSET(super, 0, 0x10);
        this->tileIndex = GetTileIndex(this->tilePos, super->collisionLayer);
        SetTile(SPECIAL_TILE_83, this->tilePos, super->collisionLayer);
        InitializeAnimation(super, 1);
    } else {
        super->type2 = 1;
        this->tilePos = COORD_TO_TILE_OFFSET(super, 0x10, 0);
        this->tileIndex = GetTileIndex(this->tilePos, super->collisionLayer);
        SetTile(SPECIAL_TILE_82, this->tilePos, super->collisionLayer);
        InitializeAnimation(super, 0);
    }
}

bool32 PushableLever_ShouldStartPushing(PushableLeverEntity* this) {
    if (GetTileIndex(this->tilePos, super->collisionLayer) == SPECIAL_TILE_84) {
        if (--this->timer == 0) {
            return TRUE;
        }
        PushableLever_CalculateSpriteOffsets(this);
        SetTile(PushableLever_Tiles[super->type2], this->tilePos, super->collisionLayer);
    } else {
        this->timer = 60;
        super->spriteOffsetX = 0;
        super->spriteOffsetY = 0;
    }
    return FALSE;
}

void PushableLever_CalculateSpriteOffsets(PushableLeverEntity* this) {
    const u8* offsets;
    if (super->type2 == 0) {
        offsets = PushableLever_InitialOffsets;
    } else {
        offsets = PushableLever_PushedOffsets;
    }
    offsets = &offsets[(this->timer / 4) & 6];
    super->spriteOffsetX = offsets[0];
    super->spriteOffsetY = offsets[1];
    if ((this->timer & 3) == 0) {
        EnqueueSFX(SFX_PLACE_OBJ);
    }
}

void (*const PushableLever_Actions[])(PushableLeverEntity*) = {
    PushableLever_Init,
    PushableLever_Idle,
    PushableLever_Pushing,
};
const u16 PushableLever_Tiles[] = {
    SPECIAL_TILE_83,
    SPECIAL_TILE_82,
};
const u8 PushableLever_InitialOffsets[] = {
    0, 0, 0, 0, 255, 0, 0, 0,
};
const u8 PushableLever_PushedOffsets[] = {
    0, 0, 0, 0, 0, 255, 0, 0,
};
