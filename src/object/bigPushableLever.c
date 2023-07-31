/**
 * @file bigPushableLever.c
 * @ingroup Objects
 *
 * @brief Big Pushable Lever object
 */
#define NENT_DEPRECATED
#include "functions.h"
#include "object.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unk_68[8];
    /*0x70*/ u16 tilePositionUpper;
    /*0x72*/ u16 tilePositionLower;
    /*0x74*/ u16 tileIndexUpper;
    /*0x76*/ u16 tileIndexLower;
    /*0x78*/ u8 unk_78[12];
    /*0x84*/ u16 timer;
    /*0x86*/ u16 pushedFlag;
} BigPushableLeverEntity;

enum BigPushableLeverAction {
    INIT,
    IDLE,
    PUSHING,
};

extern void (*const BigPushableLever_Actions[])(BigPushableLeverEntity*);
extern const u16 gUnk_081236E8[];
extern const u8 BigPushableLever_InitialOffsets[];
extern const u8 BigPushableLever_PushedOffsets[];

void BigPushableLever_SetIdle(BigPushableLeverEntity*);
bool32 BigPushableLever_ShouldStartPushing(BigPushableLeverEntity*);
void BigPushableLever_SetTiles(BigPushableLeverEntity*);
void BigPushableLever_CalculateSpriteOffsets(BigPushableLeverEntity*);

#define TILE_INITIAL 0x4058
#define TILE_PUSHED 0x4056

void BigPushableLever(BigPushableLeverEntity* this) {
    BigPushableLever_Actions[super->action](this);
}

void BigPushableLever_Init(BigPushableLeverEntity* this) {
    super->spritePriority.b0 = 5;
    BigPushableLever_SetIdle(this);
}

void BigPushableLever_Idle(BigPushableLeverEntity* this) {
    if (BigPushableLever_ShouldStartPushing(this)) {
        super->action = PUSHING;
        SetTile(this->tileIndexUpper, this->tilePositionUpper, super->collisionLayer);
        SetTile(this->tileIndexLower, this->tilePositionLower, super->collisionLayer);
        EnqueueSFX(SFX_132);
        RequestPriorityDuration(super, 30);
        if (PlayerCanBeMoved()) {
            gPlayerState.pushedObject = 0x98;
            gPlayerState.queued_action = PLAYER_PUSH;
            gPlayerState.flags |= PL_BUSY;
            gPlayerEntity.x.HALF.LO = 0;
            gPlayerEntity.y.HALF.LO = 0;
            gPlayerEntity.direction = gPlayerEntity.animationState << 2;
        }
    }
}

void BigPushableLever_Pushing(BigPushableLeverEntity* this) {
    GetNextFrame(super);
    if ((super->frame & ANIM_DONE) != 0) {
        if (super->type2 == 0) {
            SetFlag(this->pushedFlag);
        } else {
            ClearFlag(this->pushedFlag);
        }
        BigPushableLever_SetIdle(this);
    }
}

void BigPushableLever_SetIdle(BigPushableLeverEntity* this) {
    super->action = IDLE;
    this->timer = 60;
    BigPushableLever_SetTiles(this);
}

void BigPushableLever_SetTiles(BigPushableLeverEntity* this) {
    if (!CheckFlags(this->pushedFlag)) {
        super->type2 = 0;
        this->tilePositionUpper = COORD_TO_TILE_OFFSET(super, 0, 0x10);
        this->tilePositionLower = this->tilePositionUpper - 0x40;
        this->tileIndexUpper = GetTileIndex(this->tilePositionUpper, super->collisionLayer);
        this->tileIndexLower = GetTileIndex(this->tilePositionLower, super->collisionLayer);
        SetTile(0x4057, this->tilePositionUpper, super->collisionLayer);
        SetTile(0x4058, this->tilePositionLower, super->collisionLayer);
        InitializeAnimation(super, 1);
    } else {
        super->type2 = 1;
        this->tilePositionUpper = COORD_TO_TILE_OFFSET(super, 0x10, 0);
        this->tilePositionLower = this->tilePositionUpper - 1;
        this->tileIndexUpper = GetTileIndex(this->tilePositionUpper, super->collisionLayer);
        this->tileIndexLower = GetTileIndex(this->tilePositionLower, super->collisionLayer);
        SetTile(0x4055, this->tilePositionUpper, super->collisionLayer);
        SetTile(0x4056, this->tilePositionLower, super->collisionLayer);
        InitializeAnimation(super, 0);
    }
}

bool32 BigPushableLever_ShouldStartPushing(BigPushableLeverEntity* this) {
    if (GetTileIndex(this->tilePositionLower, super->collisionLayer) == 0x4059) {
        if (--this->timer == 0) {
            return TRUE;
        }
        BigPushableLever_CalculateSpriteOffsets(this);
        SetTile(gUnk_081236E8[super->type2], this->tilePositionLower, super->collisionLayer);
    } else {
        this->timer = 60;
        super->spriteOffsetX = 0;
        super->spriteOffsetY = 0;
    }
    return FALSE;
}

void BigPushableLever_CalculateSpriteOffsets(BigPushableLeverEntity* this) {
    const u8* offsets;
    if (super->type2 == 0) {
        offsets = BigPushableLever_InitialOffsets;
    } else {
        offsets = BigPushableLever_PushedOffsets;
    }
    offsets = &offsets[this->timer >> 2 & 6];
    super->spriteOffsetX = offsets[0];
    super->spriteOffsetY = offsets[1];
    if ((this->timer & 3) == 0) {
        EnqueueSFX(SFX_131);
    }
}

void (*const BigPushableLever_Actions[])(BigPushableLeverEntity*) = {
    BigPushableLever_Init,
    BigPushableLever_Idle,
    BigPushableLever_Pushing,
};
const u16 gUnk_081236E8[] = {
    TILE_INITIAL,
    TILE_PUSHED,
};
const u8 BigPushableLever_InitialOffsets[] = {
    0, 0, 0, 0, 255, 0, 0, 0,
};
const u8 BigPushableLever_PushedOffsets[] = {
    0, 0, 0, 0, 0, 255, 0, 0,
};
