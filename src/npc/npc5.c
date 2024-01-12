/**
 * @file npc5.c
 * @ingroup NPCs
 *
 * @brief Unused Zelda follower NPC.
 */
#include "collision.h"
#include "functions.h"
#include "hitbox.h"
#include "message.h"
#include "npc.h"
#include "tiles.h"

#define kFollowDistance 32 // distance to follow player
#define kPoiDistance 4     // point of interest distance
#define kGravity Q_8_8(32.0)

#define kCloseDistance 48    // distance to player to walk slowly
#define kFarDistance 80      // distance to player to walk fast
#define kCloseSpeed 0x120    // speed when close to player
#define kMidSpeed 0x160      // speed when mid distance from player
#define kFarSpeed 0x220      // speed when far from player
#define kNavigateSpeed 0x1e0 // speed when navigating

#define FLAG_FLINCHING 0x1
#define FLAG_GOTO_PLAYER 0x2
#define FLAG_GOTO_JUMPED 0x4
#define FLAG_NAVIGATE 0x8

typedef enum {
    ZELDA_STATE_INIT,
    ZELDA_STATE_IDLE,
    ZELDA_STATE_FOLLOW,
    ZELDA_STATE_LOST,
    ZELDA_STATE_ANIM_SCRIPTED,
    ZELDA_STATE_WALK_PRE_JUMP,
    ZELDA_STATE_JUMP,
    ZELDA_STATE_LAND,
} ZeldaState;

#define HEAP ((ZeldaData*)super->myHeap)

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u16* messageData;
    /*0x6c*/ u8 baseAnimation;
    /*0x6d*/ u8 unused1;
    /*0x6e*/ u16 linear_move_dist;
    /*0x70*/ u8 unused2[4];
    /*0x74*/ u16 currentRoom;
    /*0x76*/ u8 unused3[2];
    /*0x78*/ Entity* interactEntity;
} NPC5Entity;

typedef struct {
    u8 flags;          // u8
    u8 followDistance; // u8
    u16 playerX;       // u16
    u16 playerY;       // u16
    u16 destX;
    u16 destY;
    u16 playerJumpedX; // u16
    u16 playerJumpedY; // u16
    u16 navX;          // u16
    u16 navY;          // u16
} ZeldaData;

void ZeldaSetAnim(NPC5Entity*, u32);

u32 CheckIsFlinching(NPC5Entity*);
u32 ZeldaAtDestination(Entity*);
void ZeldaUpdateIdleAnim(NPC5Entity*);
void ZeldaCalcWalkSpeed(NPC5Entity*, u32, u32);

bool32 CheckDirectPathUnblocked(Entity*, u32, u32);
void ZeldaInitNavigate(NPC5Entity*, u32, u32);
void ZeldaCalcWalkAnim(NPC5Entity*, u32, u32, u32);
bool32 ZeldaProcessMovement(NPC5Entity*);

void ZeldaDoLostAnim(NPC5Entity*);
void ZeldaUpdateAnim(Entity*);
void ZeldaType0Init(NPC5Entity*);
void ZeldaType1Init(NPC5Entity*);
void ZeldaType2Init(NPC5Entity*);
void ZeldaType3Init(NPC5Entity*);
void ZeldaInitAction(NPC5Entity*);
void ZeldaIdleAction(NPC5Entity*);
void ZeldaFollowAction(NPC5Entity*);
void ZeldaLostAction(NPC5Entity*);
void ZeldaAnimScripted(NPC5Entity*);
void ZeldaWalkPreJump(NPC5Entity*);
void ZeldaJumpAction(NPC5Entity*);
void ZeldaLandAction(NPC5Entity*);
void sub_08061ACC(NPC5Entity*);
void sub_08061B18(NPC5Entity*);

u32 PointInsideRadius(s32, s32, s32);

u32 CalcJumpDirection(Entity*);
extern u32 sub_08079FD4(Entity*, u32);
extern void UpdateCollisionLayer(Entity*);

bool32 TryNavRightFromAbove(NPC5Entity*, s32, s32, s32);
bool32 TryNavUpFromRight(NPC5Entity*, s32, s32, s32);
bool32 TryNavLeftFromAbove(NPC5Entity*, s32, s32, s32);
bool32 TryNavBelowFromRight(NPC5Entity*, s32, s32, s32);
bool32 TryNavLeftFromBelow(NPC5Entity*, s32, s32, s32);
bool32 TryNavBelowFromLeft(NPC5Entity*, s32, s32, s32);
bool32 TryNavRightFromBelow(NPC5Entity*, s32, s32, s32);
bool32 TryNavUpFromLeft(NPC5Entity*, s32, s32, s32);

bool32 CheckPathRight(u8*, s32, s32, s32);
bool32 CheckPathLeft(u8*, s32, s32, s32);
bool32 CheckPathUp(u8*, s32, s32, s32);
bool32 CheckPathBelow(u8*, s32, s32, s32);

void sub_08061AFC(NPC5Entity*);

extern u16* gZeldaFollowerText[8];

void CreateZeldaFollower(void) {
    Entity* npc;
    if (CheckGlobalFlag(ZELDA_CHASE) != 0) {
        npc = CreateNPC(ZELDA_FOLLOWER, 0, 0);
        if (npc != NULL) {
            CopyPosition(&gPlayerEntity.base, npc);
            npc->flags |= ENT_PERSIST;
            npc->animationState = GetAnimationState(npc);
        }
    }
}

// UNUSED zelda follower, probably because it was too resource heavy
void NPC5(NPC5Entity* this) {
    static void (*const gUnk_0810AC1C[])(NPC5Entity*) = {
        ZeldaType0Init,
        ZeldaType1Init,
        ZeldaType2Init,
        ZeldaType3Init,
    };
    gUnk_0810AC1C[super->type](this);
}

void ZeldaType0Init(NPC5Entity* this) {
    static void (*const Npc5_Actions[])(NPC5Entity*) = {
        ZeldaInitAction,   ZeldaIdleAction,  ZeldaFollowAction, ZeldaLostAction,
        ZeldaAnimScripted, ZeldaWalkPreJump, ZeldaJumpAction,   ZeldaLandAction,
    };
    u32 tmp;

    if (gPlayerState.jump_status & 0x80) {
        if (super->action != ZELDA_STATE_INIT) {
            if ((HEAP->flags & FLAG_GOTO_JUMPED) == 0) {
                HEAP->flags |= FLAG_GOTO_JUMPED;
                HEAP->playerJumpedX = (gPlayerEntity.base.x.HALF.HI & 0xfff0) + 8;
                HEAP->playerJumpedY = (gPlayerEntity.base.y.HALF.HI & 0xfff0) + 8;
            }
        }
    }

    if ((super->action == ZELDA_STATE_INIT) || (super->spriteSettings.draw != 0)) {
        Npc5_Actions[super->action](this);
    }

    if (super->action != ZELDA_STATE_INIT) {
        HEAP->playerX = gPlayerEntity.base.x.HALF.HI;
        HEAP->playerY = gPlayerEntity.base.y.HALF.HI;
    }
    if (this->currentRoom != gRoomControls.room) {
        this->currentRoom = gRoomControls.room;
        CopyPosition(&gPlayerEntity.base, super);
        super->action = ZELDA_STATE_IDLE;
        super->spriteSettings.draw = 1;
        super->speed = kCloseSpeed;
        tmp = gRoomControls.scroll_direction;
        super->animationState = tmp * 2;
        InitAnimationForceUpdate(super, tmp << 0x19 >> 0x19); // TODO some conversion between u8 and u32?
        super->frameDuration = (Random() & 0x7f) + 0x80;
        HEAP->flags &= ~FLAG_GOTO_JUMPED;
    }
}

void ZeldaInitAction(NPC5Entity* this) {
    ZeldaData* heapObj;
    Entity* otherNpc;

    heapObj = (ZeldaData*)zMalloc(sizeof(ZeldaData));
    if (heapObj != NULL) {
        super->myHeap = (u32*)heapObj;
        heapObj->followDistance = kFollowDistance;
        super->action = ZELDA_STATE_IDLE;
        COLLISION_ON(super);
        super->animationState &= 3;
        super->collisionFlags = 7;
        super->hurtType = 0x48;
        super->hitType = 0x49;
        super->collisionMask = 3;
        super->hitbox = (Hitbox*)&gHitbox_0;
        super->followerFlag &= ~1;
        this->baseAnimation = 0xff;
        ZeldaSetAnim(this, super->animationState);
        otherNpc = CreateNPC(NPC_UNK_5, 2, 0);
        if (otherNpc != NULL) {
            otherNpc->parent = super;
            this->interactEntity = otherNpc;
        }
    }
}

void ZeldaIdleAction(NPC5Entity* this) {
    if (CheckIsFlinching(this)) {
        return;
    }

    if (!ZeldaAtDestination(super) &&
        DirectionNormalize(GetFacingDirection(super, &gPlayerEntity.base) + (super->animationState * -4) + 4) < 9) {
        super->action = ZELDA_STATE_FOLLOW;
        super->subtimer = 0;
        return;
    }
    ZeldaUpdateIdleAnim(this);
}

void ZeldaFollowAction(NPC5Entity* this) {
    Entity* r5;
    //! @bug: r5 is uninitialized

    if (CheckIsFlinching(this)) {
        return;
    }

    if (HEAP->flags & FLAG_GOTO_JUMPED) {
        // goto position where player jumped
        if (HEAP->flags & FLAG_NAVIGATE) {
            // navigate to jump position
            super->speed = kNavigateSpeed;
            ZeldaCalcWalkAnim(this, HEAP->navX, HEAP->navY, 0xc);
            ZeldaProcessMovement(this);
            if (EntityWithinDistance(super, HEAP->navX, HEAP->navY, kPoiDistance)) {
                // reached navigation position
                HEAP->flags &= ~FLAG_NAVIGATE;
            }
        } else if (CheckDirectPathUnblocked(super, HEAP->playerJumpedX, HEAP->playerJumpedY)) {
            // At jump location, begin jumping
            if (EntityWithinDistance(super, HEAP->playerJumpedX, HEAP->playerJumpedY, kPoiDistance)) {
                HEAP->flags &= ~FLAG_GOTO_JUMPED;
                super->action = ZELDA_STATE_WALK_PRE_JUMP;
                super->direction = r5->direction;
                super->speed = kMidSpeed;
                ZeldaSetAnim(this, 8);
            } else {
                // walk to jump location
                super->speed = kNavigateSpeed;
                ZeldaCalcWalkAnim(this, r5->x.HALF.HI, r5->y.HALF.HI, 0xc);
                ZeldaProcessMovement(this);
            }
        } else {
            // navigate to jump location (bugged)
            ZeldaInitNavigate(this, r5->x.HALF.HI, r5->y.HALF.HI);
        }
    } else if (CheckDirectPathUnblocked(super, gPlayerEntity.base.x.HALF.HI, gPlayerEntity.base.y.HALF.HI)) {
        // walk directly to player
        ZeldaCalcWalkSpeed(this, gPlayerEntity.base.x.HALF.HI, gPlayerEntity.base.y.HALF.HI);
        ZeldaProcessMovement(this);
        HEAP->flags &= ~(FLAG_NAVIGATE | FLAG_GOTO_PLAYER);
    } else if (HEAP->flags & FLAG_NAVIGATE) {
        // navigating to a position
        super->speed = kNavigateSpeed;
        ZeldaCalcWalkAnim(this, HEAP->navX, HEAP->navY, 0xc);
        ZeldaProcessMovement(this);
        if (EntityWithinDistance(super, HEAP->navX, HEAP->navY, kPoiDistance)) {
            // reached navigation position
            HEAP->flags &= ~FLAG_NAVIGATE;
        }
    } else { // player not found and no position set to navigate to
        if ((HEAP->flags & FLAG_GOTO_PLAYER) == 0) {
            // get player position
            HEAP->flags |= FLAG_GOTO_PLAYER;
            HEAP->destX = HEAP->playerX;
            HEAP->destY = HEAP->playerY;
        }
        if (CheckDirectPathUnblocked(super, HEAP->destX, HEAP->destY)) {
            // can walk directly to player
            super->speed = kNavigateSpeed;
            ZeldaCalcWalkAnim(this, HEAP->destX, HEAP->destY, 0xc);
            ZeldaProcessMovement(this);
            if (EntityWithinDistance(super, HEAP->destX, HEAP->destY, kPoiDistance)) {
                // reached player position
                HEAP->flags &= ~FLAG_GOTO_PLAYER;
            }
        } else { // try to navigate to player
            HEAP->flags &= ~FLAG_GOTO_PLAYER;
            ZeldaInitNavigate(this, gPlayerEntity.base.x.HALF.HI, gPlayerEntity.base.y.HALF.HI);
        }
    }

    if (ZeldaAtDestination(super)) {
        super->action = ZELDA_STATE_IDLE;
        HEAP->flags &= ~FLAG_GOTO_JUMPED;
        ZeldaSetAnim(this, 0);
    }
}

void ZeldaLostAction(NPC5Entity* this) {
    ZeldaDoLostAnim(this);

    // wait to be found
    if (!ZeldaAtDestination(super)) {
        return;
    }

    if ((u32)super->animIndex - 0x20 < 0x10) {
        if ((super->frame & 7) != 0) {
            super->frameDuration = 1;
            UpdateAnimationSingleFrame(super);
        }
        super->animationState = super->frame & 0x18;
        this->baseAnimation = 0xff;
    }
    super->action = ZELDA_STATE_IDLE;
    ZeldaSetAnim(this, 0);
}

void ZeldaAnimScripted(NPC5Entity* this) {
    UpdateAnimationSingleFrame(super);
    if (super->frame & ANIM_DONE) {
        super->action = ZELDA_STATE_IDLE;
        ZeldaSetAnim(this, 0);
    }
}

void ZeldaWalkPreJump(NPC5Entity* this) {
    ZeldaProcessMovement(this);
}

void ZeldaJumpAction(NPC5Entity* this) {
    LinearMoveUpdate(super);
    ZeldaUpdateAnim(super);
    if (GravityUpdate(super, kGravity) == 0) {
        super->action = ZELDA_STATE_LAND;
        super->collisionLayer = 1;
        UpdateSpriteForCollisionLayer(super);
        ZeldaSetAnim(this, 0x1c);
    }
}

void ZeldaLandAction(NPC5Entity* this) {
    UpdateAnimationSingleFrame(super);
    if (super->frame & ANIM_DONE) {
        super->action = ZELDA_STATE_FOLLOW;
        super->animationState = DirectionToAnimationState(GetFacingDirection(super, &gPlayerEntity.base)) * 2;
        ZeldaSetAnim(this, 8);
    }
}

void ZeldaSetAnim(NPC5Entity* this, u32 param) {
    u32 tmp = param + super->animationState / 2;
    if (tmp != super->animIndex) {
        this->baseAnimation = param;
        InitAnimationForceUpdate(super, tmp);
    }
}

void ZeldaUpdateAnim(Entity* this) {
    if (((*(u32*)&this->animIndex & 0x80ff00) == 0x800100) && (this->animIndex < 4)) {
        InitAnimationForceUpdate(this, (this->animationState >> 1));
        this->frameDuration = (Random() & 0x7f) + 0x80;
    } else {
        UpdateAnimationSingleFrame(this);
    }
}

void ZeldaUpdateIdleAnim(NPC5Entity* this) {
    s32 tmp;

    if (((u32)super->animIndex - 0x20 < 0x10) && ((super->frame & ANIM_DONE) == 0)) {
        UpdateAnimationSingleFrame(super);
        return;
    }

    tmp = GetFacingDirection(super, &gPlayerEntity.base) + super->animationState * -4;
    if (((tmp + 3) & 0x1f) > 6) {
        if ((tmp & 0x1f) < 0x10) {
            InitAnimationForceUpdate(super, super->animationState + 0x20);
            super->animationState = (super->animationState + 1) & 7;
        } else {
            InitAnimationForceUpdate(super, super->animationState + 0x28);
            super->animationState = (super->animationState - 1) & 7;
        }
        return;
    }

    if ((super->animationState & 1) == 0) {
        if ((super->frame & ANIM_DONE) && (0xf >= (u32)super->animIndex - 0x20)) {
            ZeldaSetAnim(this, 0);
        } else {
            ZeldaUpdateAnim(super);
        }
    }
}

u32 ZeldaAtDestination(Entity* this) {
    if (CheckDirectPathUnblocked(this, (s32)gPlayerEntity.base.x.HALF.HI, (s32)gPlayerEntity.base.y.HALF.HI) == 0) {
        return 0;
    }
    ((ZeldaData*)this->myHeap)->flags &= ~FLAG_GOTO_JUMPED;
    if (PointInsideRadius(gPlayerEntity.base.x.HALF.HI - this->x.HALF.HI,
                          gPlayerEntity.base.y.HALF.HI - this->y.HALF.HI, ((ZeldaData*)this->myHeap)->followDistance)) {
        return 1;
    }
    return 0;
}

bool32 CheckDirectPathUnblocked(Entity* this, u32 target_x, u32 target_y) {
    s32 dx;
    s32 dy;
    int angle;
    int x;
    int y;
    u8* layer;

    const int col_check_length = 6;

    x = this->x.HALF.HI;
    y = this->y.HALF.HI;
    angle = CalculateDirectionFromOffsets(target_x - x, target_y - y);
    x <<= 8;
    y <<= 8;

    // get vector to target
    dx = gSineTable[angle] * col_check_length;
    dy = gSineTable[(angle + 0x40)] * col_check_length;

    if (this->collisionLayer != 2) {
        layer = gMapBottom.collisionData;
    } else {
        layer = gMapTop.collisionData;
    }

    while (1) {
        if (IsTileCollision(layer, x / 0x100, y / 0x100, col_check_length)) {
            return 0;
        }
        if (((target_x - (x / 0x100)) + col_check_length > col_check_length * 2) ||
            ((target_y - (y / 0x100)) + col_check_length > col_check_length * 2)) {
            x += dx;
            y -= dy;
            continue;
        }
        return 1;
    }
}

void ZeldaCalcWalkSpeed(NPC5Entity* this, u32 a, u32 b) {
    s32 xDist;
    s32 yDist;
    s32 sqrDist;
    u32 tmp;

    xDist = gPlayerEntity.base.x.HALF.HI - super->x.HALF.HI;
    yDist = gPlayerEntity.base.y.HALF.HI - super->y.HALF.HI;
    sqrDist = (xDist * xDist) + (yDist * yDist);
    if (sqrDist < kCloseDistance * kCloseDistance) {
        super->speed = kCloseSpeed;
    } else {
        if (sqrDist < kFarDistance * kFarDistance) {
            super->speed = ((sqrDist - (kCloseDistance * kCloseDistance)) >> 4) + kCloseSpeed;
        } else {
            super->speed = kFarSpeed;
        }
    }
    if (super->speed == kCloseSpeed) {
        tmp = 4;
    } else if (super->speed < kMidSpeed) {
        tmp = 8;
    } else {
        tmp = 0xc;
    }
    ZeldaCalcWalkAnim(this, a, b, tmp);
}

void ZeldaCalcWalkAnim(NPC5Entity* this, u32 target_x, u32 target_y, u32 anim) {
    super->direction = CalculateDirectionTo(super->x.HALF.HI, super->y.HALF.HI, target_x, target_y);
    if ((anim != this->baseAnimation) || (10 < ((super->direction + super->animationState * -4 + 5) & 0x1f))) {
        super->animationState = Direction8ToAnimationState(DirectionRoundUp(super->direction));
        ZeldaSetAnim(this, anim);
    }
}

bool32 ZeldaProcessMovement(NPC5Entity* this) {
    u32 direction;
    u32 tmp;

    UpdateAnimationSingleFrame(super);
    if (ProcessMovement6(super) == 0) {
        direction = CalcJumpDirection(super);
        if (direction != 0xff) {
            super->action = ZELDA_STATE_JUMP;
            tmp = (sub_08079FD4(super, 1));
            tmp <<= 4;
            tmp -= 4;
            tmp = tmp << 0xc;
            super->zVelocity = tmp;
            super->speed = 0x100;
            super->direction = direction;
            super->animationState = direction >> 2;
            if (tmp >> 0x10 != 0) {
                ZeldaSetAnim(this, 0x14);
            } else {
                ZeldaSetAnim(this, 0x18);
            }
        }
        return FALSE;
    } else {
        UpdateCollisionLayer(super);
        return TRUE;
    }
}

// TODO: this relies on tiles 0x2a - 0x2d, do these exist in the game?
u32 CalcJumpDirection(Entity* this) {
    static const struct {
        s8 unk_0;
        s8 unk_1;
    } PACKED sOffsets[] = {
        { 0, -8 },
        { 8, 0 },
        { 0, 3 },
        { -8, 0 },
    };

    static const u8 sTable[] = {
        // actTile, animationState
        ACT_TILE_43, DirectionSouth, ACT_TILE_42, DirectionNorth, ACT_TILE_45, DirectionEast,
        ACT_TILE_44, DirectionWest,  0x0,
    };

    u32 actTile;
    u32 x;
    s32 x_offset;
    s32 y_offset;
    s8* ptr;
    const u8* ptr2;
    x = AnimationStateIdle(this->animationState);
    ptr = (s8*)sOffsets;
    x_offset = ptr[x];
    y_offset = ptr[x + 1];
    actTile = GetActTileRelativeToEntity(this, x_offset, y_offset);
    ptr2 = sTable;

    do {
        if (*ptr2 != actTile || this->animationState != (ptr2[1] >> 2)) {
            continue;
        }

        ++this->subtimer;

        if (this->subtimer < 8) {
            return 0xff;
        }

        return ptr2[1];
    } while (ptr2 += 2, *ptr2 != 0);

    this->subtimer = 0;

    return 0xff;
}

u32 CheckIsFlinching(NPC5Entity* this) {
    if ((HEAP->flags & FLAG_FLINCHING) == 0) {
        if (super->contactFlags & CONTACT_NOW) {
            switch (super->contactFlags & 0x7f) {
                case 0:
                case 1:
                case 2:
                case 3:
                case 0xf:
                case 0x13:
                case 0x1b:
                case 0x1e:
                case 0x1f:
                    break;
                default:
                    HEAP->flags |= FLAG_FLINCHING;
                    InitAnimationForceUpdate(super, (super->animationState >> 1) + 0x40);
                    return 1;
            }
        }
    } else {
        UpdateAnimationSingleFrame(super);
        if ((super->frame & ANIM_DONE) == 0) {
            return 1;
        }
        HEAP->flags &= ~FLAG_FLINCHING;
        InitAnimationForceUpdate(super, this->baseAnimation + (super->animationState >> 1));
    }
    super->contactFlags &= 0x7f;
    if (super->iframes != 0) {
        super->iframes++;
    }
    return 0;
}

void ZeldaDoLostAnim(NPC5Entity* this) {
    static const u8 gUnk_0810AC5D[] = {
        0x30, 0x31, 0x38, 0x39, 0x32, 0x33, 0x3a, 0x3b, 0x34, 0x35, 0x3c, 0x3d, 0x36, 0x37, 0x3e, 0x3f, 0x0, 0x0, 0x0,
    };
    u32 uVar2;
    u32 bVar4;

    switch (super->subAction) {
        case 0:
            UpdateAnimationSingleFrame(super);
            if ((super->frame & ANIM_DONE) == 0) {
                return;
            }
            super->subAction = 1;
            super->timer = 15;
            ZeldaSetAnim(this, 0);
            break;
        case 1:
            super->timer--;
            if (super->timer != 0) {
                return;
            }
            uVar2 = Random();
            bVar4 = uVar2;
            if ((uVar2 & 1) == 0) {
                super->subAction = 3;
                super->timer = (bVar4 & 0x18) + 30;
                ZeldaSetAnim(this, 4);
                return;
            }
            super->subAction = 2;
            InitAnimationForceUpdate(super, gUnk_0810AC5D[(u32)super->animationState * 2 + ((uVar2 >> 4) & 3)]);
            break;
        case 2:
            UpdateAnimationSingleFrame(super);
            if ((super->frame & ANIM_DONE) == 0) {
                return;
            }
            super->animationState = ((super->frame & 0x18) >> 2);
            if ((Random() & 1)) {
                super->subAction = 3;
                super->timer = (bVar4 & 0x18) + 30;
                ZeldaSetAnim(this, 4);
                return;
            }
            super->subAction = 0;
            ZeldaSetAnim(this, 0x10);
            break;
        case 3:
            if (ZeldaProcessMovement(this) == 0) {
                super->subAction = 2;

                //! @bug bVar4 (r6) is uninitialized.
                InitAnimationForceUpdate(super, gUnk_0810AC5D[super->animationState * 2 + (bVar4 >> 4 & 3)]);
                return;
            }
            if (--super->timer != 0) {
                return;
            }
            super->subAction = 0;
            ZeldaSetAnim(this, 0x10);
            break;
    }
}

void ZeldaInitNavigate(NPC5Entity* this, u32 tgt_x, u32 tgt_y) {
    s32 x;
    s32 y;

    x = super->x.HALF.HI;
    y = super->y.HALF.HI;

    switch (((CalculateDirectionTo(super->x.HALF.HI, super->y.HALF.HI, tgt_x, tgt_y) + 2) & 0x1c) >> 2) {
        case 0:
            this->linear_move_dist = tgt_y;
            if (super->x.HALF.HI > (s32)tgt_x) {
                TryNavRightFromAbove(this, x, y + -8, tgt_x);
                break;
            }
            TryNavLeftFromAbove(this, x, y + -8, tgt_x);
            break;
        case 1:
            this->linear_move_dist = tgt_x;
            if (TryNavUpFromRight(this, x + 8, y, tgt_y) != 0)
                break;
            this->linear_move_dist = tgt_y;
            TryNavLeftFromAbove(this, x, y + -8, tgt_x);
            break;
        case 2:
            this->linear_move_dist = tgt_x;
            if (super->y.HALF.HI > (s32)tgt_y) {
                TryNavUpFromRight(this, x + 8, y, tgt_y);
            } else {
                TryNavBelowFromRight(this, x + 8, y, tgt_y);
            }
            break;
        case 3:
            this->linear_move_dist = tgt_x;
            if (TryNavBelowFromRight(this, x + 8, y, tgt_y) != 0)
                break;
            this->linear_move_dist = tgt_y;
            TryNavLeftFromBelow(this, x, y + 8, tgt_x);
            break;
        case 4:
            this->linear_move_dist = tgt_y;
            if (super->x.HALF.HI > (s32)tgt_x) {
                TryNavRightFromBelow(this, x, y + 8, tgt_x);
                break;
            }
            TryNavLeftFromBelow(this, x, y + 8, tgt_x);
            break;
        case 5:
            this->linear_move_dist = tgt_x;
            if (TryNavBelowFromLeft(this, x + -8, y, tgt_y) != 0)
                break;
            this->linear_move_dist = tgt_y;
            TryNavRightFromBelow(this, x, y + 8, tgt_x);
            break;
        case 6:
            this->linear_move_dist = tgt_x;
            if (super->y.HALF.HI > (s32)tgt_y) {
                TryNavUpFromLeft(this, x + -8, y, tgt_y);
            } else {
                TryNavBelowFromLeft(this, x + -8, y, tgt_y);
            }
            break;
        case 7:
            this->linear_move_dist = tgt_x;
            if (TryNavUpFromLeft(this, x + -8, y, tgt_y) == 0) {
                this->linear_move_dist = tgt_y;
                TryNavRightFromAbove(this, x, y + -8, tgt_x);
            }
    }

    if ((HEAP->flags & FLAG_NAVIGATE) == 0) {
        super->action = ZELDA_STATE_LOST;
        super->subAction = 0;
    }
}

bool32 TryNavRightFromAbove(NPC5Entity* this, s32 x, s32 y, s32 param) {
    u32 param_y = y;
    u8* layer = (super->collisionLayer == 2) ? gMapTop.collisionData : gMapBottom.collisionData;
    while (!IsTileCollision(layer, x, y, 6)) {
        if (CheckPathRight(layer, x, y, param)) {
            HEAP->navX = x;
            HEAP->navY = param_y;
            HEAP->flags |= FLAG_NAVIGATE;
            if (this->linear_move_dist >= y) {
                return TRUE;
            }
        }
        y -= 8;
    }
    return FALSE;
}

bool32 TryNavLeftFromAbove(NPC5Entity* this, s32 x, s32 y, s32 param) {
    u32 param_y = y;
    u8* layer = (super->collisionLayer == 2) ? gMapTop.collisionData : gMapBottom.collisionData;
    while (!IsTileCollision(layer, x, y, 6)) {
        if (CheckPathLeft(layer, x, y, param)) {
            HEAP->navX = x;
            HEAP->navY = param_y;
            HEAP->flags |= FLAG_NAVIGATE;
            if (this->linear_move_dist >= y) {
                return TRUE;
            }
        }
        y -= 8;
    }
    return FALSE;
}

bool32 TryNavUpFromRight(NPC5Entity* this, s32 x, s32 y, s32 param) {
    u32 param_x = x;
    u8* layer = (super->collisionLayer == 2) ? gMapTop.collisionData : gMapBottom.collisionData;
    while (!IsTileCollision(layer, x, y, 6)) {
        if (CheckPathUp(layer, x, y, param)) {
            HEAP->navX = param_x;
            HEAP->navY = y;
            HEAP->flags |= FLAG_NAVIGATE;
            if (this->linear_move_dist <= x) {
                return TRUE;
            }
        }
        x += 8;
    }
    return FALSE;
}

bool32 TryNavBelowFromRight(NPC5Entity* this, s32 x, s32 y, s32 param) {
    u32 param_x = x;
    u8* layer = (super->collisionLayer == 2) ? gMapTop.collisionData : gMapBottom.collisionData;
    while (!IsTileCollision(layer, x, y, 6)) {
        if (CheckPathBelow(layer, x, y, param)) {
            HEAP->navX = param_x;
            HEAP->navY = y;
            HEAP->flags |= FLAG_NAVIGATE;
            if (this->linear_move_dist <= x) {
                return TRUE;
            }
        }
        x += 8;
    }
    return FALSE;
}

bool32 TryNavRightFromBelow(NPC5Entity* this, s32 x, s32 y, s32 param) {
    u32 param_y = y;
    u8* layer = (super->collisionLayer == 2) ? gMapTop.collisionData : gMapBottom.collisionData;
    while (!IsTileCollision(layer, x, y, 6)) {
        if (CheckPathRight(layer, x, y, param)) {
            HEAP->navX = x;
            HEAP->navY = param_y;
            HEAP->flags |= FLAG_NAVIGATE;
            if (this->linear_move_dist <= y) {
                return TRUE;
            }
        }
        y += 8;
    }
    return FALSE;
}

bool32 TryNavLeftFromBelow(NPC5Entity* this, s32 x, s32 y, s32 param) {
    u32 param_y = y;
    u8* layer = (super->collisionLayer == 2) ? gMapTop.collisionData : gMapBottom.collisionData;
    while (!IsTileCollision(layer, x, y, 6)) {
        if (CheckPathLeft(layer, x, y, param)) {
            HEAP->navX = x;
            HEAP->navY = param_y;
            HEAP->flags |= FLAG_NAVIGATE;
            if (this->linear_move_dist <= y) {
                return TRUE;
            }
        }
        y += 8;
    }
    return FALSE;
}

bool32 TryNavUpFromLeft(NPC5Entity* this, s32 x, s32 y, s32 param) {
    u32 param_x = x;
    u8* layer = (super->collisionLayer == 2) ? gMapTop.collisionData : gMapBottom.collisionData;
    while (!IsTileCollision(layer, x, y, 6)) {
        if (CheckPathUp(layer, x, y, param)) {
            HEAP->navX = param_x;
            HEAP->navY = y;
            HEAP->flags |= FLAG_NAVIGATE;
            if (this->linear_move_dist >= x) {
                return TRUE;
            }
        }
        x -= 8;
    }
    return FALSE;
}

bool32 TryNavBelowFromLeft(NPC5Entity* this, s32 x, s32 y, s32 param) {
    u32 param_x = x;
    u8* layer = (super->collisionLayer == 2) ? gMapTop.collisionData : gMapBottom.collisionData;
    while (!IsTileCollision(layer, x, y, 6)) {
        if (CheckPathBelow(layer, x, y, param)) {
            HEAP->navX = param_x;
            HEAP->navY = y;
            HEAP->flags |= FLAG_NAVIGATE;
            if (this->linear_move_dist >= x) {
                return TRUE;
            }
        }
        x -= 8;
    }
    return FALSE;
}

bool32 CheckPathUp(u8* layer, s32 x, s32 y, s32 param) {
    while (param <= y) {
        if (IsTileCollision(layer, x, y, 6) != 0) {
            return FALSE;
        }
        y -= 8;
    }
    return TRUE;
}

bool32 CheckPathLeft(u8* layer, s32 x, s32 y, s32 param) {
    while (param >= x) {
        if (IsTileCollision(layer, x, y, 6) != 0) {
            return FALSE;
        }
        x += 8;
    }
    return TRUE;
}

bool32 CheckPathBelow(u8* layer, s32 x, s32 y, s32 param) {
    while (param >= y) {
        if (IsTileCollision(layer, x, y, 6) != 0) {
            return FALSE;
        }
        y += 8;
    }
    return TRUE;
}

bool32 CheckPathRight(u8* layer, s32 x, s32 y, s32 param) {
    while (param <= x) {
        if (IsTileCollision(layer, x, y, 6) != 0) {
            return FALSE;
        }
        x -= 8;
    }
    return TRUE;
}

void ZeldaType1Init(NPC5Entity* this) {
    DeleteThisEntity();
}

void ZeldaType2Init(NPC5Entity* this) {
    static void (*const gUnk_0810AC70[])(NPC5Entity*) = {
        sub_08061ACC,
        sub_08061B18,
    };
    gUnk_0810AC70[super->action](this);
    CopyPosition(super->parent, super);
}

void sub_08061ACC(NPC5Entity* this) {
    super->flags |= ENT_PERSIST;
    super->action = 1;
    super->subAction = 0xff;
    super->timer = 0;
    super->followerFlag = super->followerFlag & ~1;
    AddInteractableWhenBigObject(super);
    sub_08061AFC(this);
}

void sub_08061AFC(NPC5Entity* this) {
    u32 tmp = 0;
    if (super->subAction != 0) {
        super->subAction = tmp;
        this->messageData = gZeldaFollowerText[0];
        super->timer = 0;
    }
}

void sub_08061B18(NPC5Entity* this) {
    u16* puVar2;

    switch (super->interactType) {
        case INTERACTION_NONE:
            break;
        case INTERACTION_TALK:
            super->interactType = INTERACTION_NONE;
            sub_08061AFC(this);
            puVar2 = this->messageData;
            puVar2 += (super->timer++);
            if (puVar2[1] == 0) {
                super->timer = 0;
            }
            MessageNoOverlap(puVar2[0], super);
            break;
    }
}

void ZeldaType3Init(NPC5Entity* this) {
    if (super->action == 0) {
        super->action = 1;
        InitAnimationForceUpdate(super, 2);
    }
    if (gRoomTransition.entity_update_type == 2) {
        UpdateAnimationSingleFrame(super);
    }
    sub_0806FD3C(super);
}
