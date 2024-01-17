/**
 * @file kid.c
 * @ingroup NPCs
 *
 * @brief Kid NPC
 */
#include "functions.h"
#include "message.h"
#include "npc.h"
#include "tiles.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unk_68;
    /*0x69*/ u8 unk_69;
    /*0x6a*/ u8 fusionOffer;
    /*0x6b*/ u8 unk_6b;
    /*0x6c*/ u16 unk_6c;
    /*0x6e*/ u16 unk_6e;
    /*0x70*/ u8 unused1[16];
    /*0x80*/ u16 unk_80;
    /*0x82*/ u8 unused2[2];
    /*0x84*/ ScriptExecutionContext* context;
} KidEntity;

const SpriteLoadData gUnk_0810BD7C[] = {
    { 58, 59, 4 },
    { 10298, 59, 4 },
    { 12288, 59, 4 },
    { 0, 0, 0 },
};
const SpriteLoadData gUnk_0810BD8C[] = {
    { 58, 59, 4 },
    { 8250, 59, 4 },
    { 10241, 59, 4 },
    { 0, 0, 0 },
};
const SpriteLoadData gUnk_0810BD9C[] = {
    { 16385, 59, 4 },
    { 58, 59, 4 },
    { 8250, 59, 4 },
    { 0, 0, 0 },
};
const SpriteLoadData gUnk_0810BDAC[] = {
    { 58, 59, 4 },
    { 6202, 59, 4 },
    { 0, 0, 0 },
};
const SpriteLoadData gUnk_0810BDB8[] = {
    { 58, 59, 4 },
    { 6202, 59, 4 },
    { 0, 0, 0 },
};

const SpriteLoadData* const gUnk_0810BDC4[] = {
    gUnk_0810BD7C, gUnk_0810BD7C, gUnk_0810BD7C, gUnk_0810BD7C, gUnk_0810BD8C,
    gUnk_0810BD8C, gUnk_0810BD9C, gUnk_0810BDAC, gUnk_0810BDB8,
};

const u16 gUnk_0810BDE8[][2] = { {
                                     TEXT_INDEX(TEXT_EMPTY, 0x1),
                                     TEXT_INDEX(TEXT_EMPTY, 0x1),
                                 },
                                 {
                                     TEXT_INDEX(TEXT_EMPTY, 0x1),
                                     TEXT_INDEX(TEXT_EMPTY, 0x1),
                                 },
                                 {
                                     TEXT_INDEX(TEXT_EMPTY, 0x1),
                                     TEXT_INDEX(TEXT_EMPTY, 0x1),
                                 },
                                 {
                                     TEXT_INDEX(TEXT_EMPTY, 0x1),
                                     TEXT_INDEX(TEXT_EMPTY, 0x1),
                                 },
                                 {
                                     TEXT_INDEX(TEXT_EMPTY, 0x1),
                                     TEXT_INDEX(TEXT_EMPTY, 0x1),
                                 },
                                 {
                                     TEXT_INDEX(TEXT_EMPTY, 0x1),
                                     TEXT_INDEX(TEXT_EMPTY, 0x1),
                                 },
                                 {
                                     TEXT_INDEX(TEXT_EMPTY, 0x1),
                                     TEXT_INDEX(TEXT_EMPTY, 0x1),
                                 },
                                 {
                                     TEXT_INDEX(TEXT_EMPTY, 0x1),
                                     TEXT_INDEX(TEXT_EMPTY, 0x1),
                                 },
                                 {
                                     TEXT_INDEX(TEXT_EMPTY, 0x1),
                                     TEXT_INDEX(TEXT_EMPTY, 0x1),
                                 } };
void sub_080620F4(KidEntity*);
void sub_08062130(KidEntity*);
void sub_08062194(KidEntity*);
void (*const gUnk_0810BE0C[])(KidEntity*) = { sub_080620F4, sub_08062130, sub_08062194 };
extern s32 sub_080041E8(s32 x1, s32 y1, s32 x2, s32 y2);

const Dialog gUnk_0810BE10[] = {
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_FESTIVAL, 0xf) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TOWN4, 0x33) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TOWN4, 0x33) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TOWN4, 0x33) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TOWN4, 0x33) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TOWN4, 0x33) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_SCHOOL, 0x7) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_HAPPY_HEARTH, 0x1d) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_HAPPY_HEARTH, 0x1d) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_SCHOOL, 0x4) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_SCHOOL, 0x4) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_SCHOOL, 0x4) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_SCHOOL, 0x4) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_SCHOOL, 0x4) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_SCHOOL, 0x4) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TOWN5, 0x33) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_SCHOOL, 0xb) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_SCHOOL, 0xb) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_SCHOOL, 0x5) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_SCHOOL, 0x5) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_SCHOOL, 0x5) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_SCHOOL, 0x5) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_SCHOOL, 0x5) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_SCHOOL, 0x5) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TOWN5, 0x34) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_SCHOOL, 0xc) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_SCHOOL, 0xc) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TOWN4, 0x34) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TOWN4, 0x34) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TOWN4, 0x34) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TOWN4, 0x34) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TOWN4, 0x34) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TOWN4, 0x34) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_SCHOOL, 0x8) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TOWN8, 0x2e) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TOWN8, 0x2e) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_FESTIVAL, 0xe) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TOWN4, 0x35) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TOWN4, 0x35) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TOWN4, 0x35) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TOWN4, 0x35) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TOWN4, 0x35) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TOWN5, 0x35) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TOWN8, 0x2d) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TOWN8, 0x2d) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TOWN4, 0x36) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TOWN4, 0x36) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TOWN4, 0x36) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TOWN4, 0x36) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TOWN4, 0x36) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TOWN4, 0x36) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TOWN5, 0x36) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_SIMON, 0x13) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_SIMON, 0x13) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_FESTIVAL, 0x14) } },
    { 9, DIALOG_ROOM_FLAG, DIALOG_TOGGLE_FLAG, 1, { TEXT_INDEX(TEXT_TOWN, 0x31), TEXT_INDEX(TEXT_TOWN, 0x30) } },
    { 9, DIALOG_ROOM_FLAG, DIALOG_TOGGLE_FLAG, 1, { TEXT_INDEX(TEXT_TOWN, 0x31), TEXT_INDEX(TEXT_TOWN, 0x30) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_HAPPY_HEARTH, 0x10) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TOWN3, 0x35) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TOWN4, 0x16) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TOWN5, 0x16) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_HAPPY_HEARTH, 0x1e) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_HAPPY_HEARTH, 0x1e) } },
    { 0, 0, DIALOG_CHECK_FLAG, 1, { TEXT_INDEX(TEXT_FESTIVAL, 0x20), TEXT_INDEX(TEXT_FESTIVAL, 0x13) } },
#if defined(USA) || defined(DEMO_USA)
    { 212, DIALOG_LOCAL_FLAG, DIALOG_SET_FLAG, 1, { TEXT_INDEX(TEXT_TOWN, 0x2a), TEXT_INDEX(TEXT_TOWN, 0x29) } },
    { 212, DIALOG_LOCAL_FLAG, DIALOG_SET_FLAG, 1, { TEXT_INDEX(TEXT_TOWN, 0x2a), TEXT_INDEX(TEXT_TOWN, 0x29) } },
#else
    { 209, DIALOG_LOCAL_FLAG, DIALOG_SET_FLAG, 1, { TEXT_INDEX(TEXT_TOWN, 0x2a), TEXT_INDEX(TEXT_TOWN, 0x29) } },
    { 209, DIALOG_LOCAL_FLAG, DIALOG_SET_FLAG, 1, { TEXT_INDEX(TEXT_TOWN, 0x2a), TEXT_INDEX(TEXT_TOWN, 0x29) } },
#endif
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_HAPPY_HEARTH, 0x11) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TOWN3, 0x33) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TOWN4, 0x17) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TOWN5, 0x17) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_HAPPY_HEARTH, 0x20) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_HAPPY_HEARTH, 0x20) } },
    { 0, 0, DIALOG_CHECK_FLAG, 1, { TEXT_INDEX(TEXT_FESTIVAL, 0x21), TEXT_INDEX(TEXT_FESTIVAL, 0x1e) } },
#if defined(USA) || defined(DEMO_USA)
    { 213, DIALOG_LOCAL_FLAG, DIALOG_SET_FLAG, 1, { TEXT_INDEX(TEXT_TOWN, 0x2c), TEXT_INDEX(TEXT_TOWN, 0x2b) } },
    { 213, DIALOG_LOCAL_FLAG, DIALOG_SET_FLAG, 1, { TEXT_INDEX(TEXT_TOWN, 0x2c), TEXT_INDEX(TEXT_TOWN, 0x2b) } },
#else
    { 210, DIALOG_LOCAL_FLAG, DIALOG_SET_FLAG, 1, { TEXT_INDEX(TEXT_TOWN, 0x2c), TEXT_INDEX(TEXT_TOWN, 0x2b) } },
    { 210, DIALOG_LOCAL_FLAG, DIALOG_SET_FLAG, 1, { TEXT_INDEX(TEXT_TOWN, 0x2c), TEXT_INDEX(TEXT_TOWN, 0x2b) } },
#endif
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_HAPPY_HEARTH, 0x12) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TOWN3, 0x34) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TOWN4, 0x18) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TOWN5, 0x18) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_HAPPY_HEARTH, 0x21) } },
    { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_HAPPY_HEARTH, 0x21) } },
};
const FrameStruct gUnk_0810C0A0[] = {
    { 25, 0 },   { 128, 15 }, { 37, 0 },    { 128, 15 }, { 46, 0 },    { 128, 15 },
    { 55, 0 },   { 128, 15 }, { 64, 15 },   { 128, 15 }, { 72, 15 },   { 128, 15 },
    { 120, 83 }, { 128, 15 }, { 131, 102 }, { 128, 15 }, { 139, 111 }, { 128, 15 },
};

void sub_080621AC(KidEntity* this);
void sub_080622F4(KidEntity* this);
void sub_0806265C(KidEntity* this, ScriptExecutionContext* context);
void sub_0806252C(KidEntity* this);

typedef union {
    struct {
        u16 x;
        u16 y;
        s16 z;
        u8 framestate;
        u8 animationState : 6;
        u8 collisionLayer : 2;
    } FIELDS;
    u64 DWORD;
} KidHeapItem;

#define KID_HEAP_COUNT 0x14
typedef KidHeapItem KidHeap[KID_HEAP_COUNT];
#define KID_HEAP ((KidHeapItem*)super->myHeap)

void Kid(KidEntity* this) {
    if ((super->flags & ENT_SCRIPTED) != 0) {
        sub_080621AC(this);
    } else {
        gUnk_0810BE0C[super->action](this);
    }
}

void sub_080620F4(KidEntity* this) {
    if (LoadExtraSpriteData(super, gUnk_0810BDC4[super->type])) {
        super->animationState = 4;
        this->unk_68 = 0;
        super->action = 1;
        InitAnimationForceUpdate(super, 2);
        AddInteractableWhenBigObject(super);
    }
}

void sub_08062130(KidEntity* this) {
    if (super->interactType != INTERACTION_NONE) {
        super->action = 2;
        InitAnimationForceUpdate(super, GetAnimationState(super));
    }
    if (super->subtimer++ >= 0x79) {
        super->subtimer = 0;
        super->timer = (super->timer + 1) & 7;
        if (super->type == 6) {
            super->timer = super->timer + 16;
        }
        InitAnimationForceUpdate(super, super->timer);
    } else {
        UpdateAnimationSingleFrame(super);
    }
    sub_0806ED78(super);
}

void sub_08062194(KidEntity* this) {
    MessageFromTarget(0);
    super->action = 1;
    super->interactType = INTERACTION_NONE;
}

void sub_080621AC(KidEntity* this) {
    u32 tmp;

    switch (super->action) {
        case 0:
            if (LoadExtraSpriteData(super, gUnk_0810BDC4[super->type])) {
                super->action = 1;
                super->animationState = super->timer;
                super->timer = 0;
                this->unk_68 = 0;
                this->unk_69 = 0;
                this->unk_6b = 0xff;
                tmp = sub_0805ACC0(super);
                if (tmp == 0) {
                    this->unk_6c = super->x.HALF.HI;
                    this->unk_6e = super->y.HALF.HI;
                } else {
                    this->unk_6c = tmp >> 0x10;
                    this->unk_6e = tmp;
                }
                InitScriptForNPC(super);
            }
            break;
        case 1:
            if (super->interactType == INTERACTION_FUSE) {
                super->action = 3;
                super->interactType = INTERACTION_NONE;
                InitializeNPCFusion(super);
            } else {
                if ((s8)this->unk_68 != 0) {
                    if (super->interactType != INTERACTION_NONE) {
                        super->action = 2;
                        super->interactType = INTERACTION_NONE;
                    } else {
                        sub_080622F4(this);
                        return;
                    }
                } else {
                    ExecuteScriptAndHandleAnimation(super, NULL);
                    if (super->interactType != INTERACTION_NONE) {
                        super->action = 2;
                        super->interactType = INTERACTION_NONE;
                    } else {
                        return;
                    }
                }
                sub_0806265C(this, this->context);
                tmp = super->animIndex;
            }
            this->unk_6b = super->animIndex;
            if (super->animIndex < 8) {
                InitializeAnimation(super,
                                    (super->animIndex & 0xfffffffc) +
                                        GetAnimationStateForDirection4(GetFacingDirection(super, &gPlayerEntity.base)));
            }
            break;
        case 2:
            GetNextFrame(super);
            if ((gMessage.state & MESSAGE_ACTIVE) == 0) {
                super->action = 1;
            }
            break;
        case 3:
            if (UpdateFuseInteraction(super) != 0) {
                super->action = 1;
            }
            break;
        default:
            break;
    }
}

#define KID_HEAP_SHIFT_RIGHT                     \
    heapPtr = KID_HEAP;                          \
    heapPtr += (KID_HEAP_COUNT - 2);             \
    for (i = 0; i < (KID_HEAP_COUNT - 1); i++) { \
        heapPtr[1] = heapPtr[0];                 \
        heapPtr--;                               \
    }

void sub_080622F4(KidEntity* this) {
    s32 dx;
    s32 dy;
    s32 dist;
    s32 i;

    u32 animIndex; // used as 2nd param of InitAnimationForceUpdate
    u32 animIndexTmp;

    KidHeapItem* heapPtr;
    KidHeapItem item;

    // Prepended heap item is initialized from player's current state.
    item.FIELDS.x = gPlayerEntity.base.x.HALF_U.HI;
    item.FIELDS.y = gPlayerEntity.base.y.HALF_U.HI;
    item.FIELDS.z = gPlayerEntity.base.z.HALF_U.HI;
    item.FIELDS.framestate = gPlayerState.framestate;
    item.FIELDS.animationState = gPlayerEntity.base.animationState;
    item.FIELDS.collisionLayer = gPlayerEntity.base.collisionLayer;

    heapPtr = super->myHeap;
    if (heapPtr->FIELDS.framestate == 0x16 && item.FIELDS.framestate != 0x16) {
        dx = super->x.HALF.HI - gPlayerEntity.base.x.HALF.HI;
        dy = super->y.HALF.HI - gPlayerEntity.base.y.HALF.HI;

        if (dx < 0)
            dx = -dx;
        if (dy < 0)
            dy = -dy;

        if (dx > 120 || dy > 80) {
            this->unk_68 = 0;
            return;
        }

        sub_0806252C(this);
    }

    animIndex = 0;

    if (item.DWORD != heapPtr->DWORD) {
        KID_HEAP_SHIFT_RIGHT;
        heapPtr = KID_HEAP;
        heapPtr[0] = item;

        animIndex = 0x4;
        if ((s8)this->unk_69 > 0) {
            this->unk_69 = this->unk_69 - 1;
        }
    } else {
        heapPtr += KID_HEAP_COUNT - 1;
        if (heapPtr->FIELDS.z < 0) {
            KID_HEAP_SHIFT_RIGHT;
            animIndex = 0x4;
        } else {
            dist = sub_080041E8(gPlayerEntity.base.x.HALF.HI, gPlayerEntity.base.y.HALF.HI, (u16)heapPtr->FIELDS.x,
                                (u16)heapPtr->FIELDS.y);
            dist = ((u32)dist) >> 0x4;
            if (dist > 0x18) {

                KID_HEAP_SHIFT_RIGHT;
                animIndex = 0x4;
            }
        }
    }
    heapPtr = KID_HEAP;
    heapPtr += +KID_HEAP_COUNT - 1;
    super->x.HALF.HI = heapPtr->FIELDS.x;
    super->y.HALF.HI = heapPtr->FIELDS.y;
    super->z.HALF.HI = heapPtr->FIELDS.z;
    super->animationState = heapPtr->FIELDS.animationState;
    super->collisionLayer = heapPtr->FIELDS.collisionLayer;

    if (((s8)this->unk_69) > 0) {
        this->unk_69 = this->unk_69 - 1;
    }

    animIndexTmp = animIndex;
    animIndex += super->animationState >> 1;
    if (super->type == OBJECT) {
        animIndex += 0x10;
    }

    if (!(animIndex == super->animIndex || (animIndexTmp == 0 && ((s8)this->unk_69) > 0))) {
        InitAnimationForceUpdate(super, animIndex);
        this->unk_69 = 0x1e;
    } else {
        UpdateAnimationSingleFrame(super);
    }

    sub_0800451C(super);
    return;
}

void sub_08062500(KidEntity* this) {
    super->myHeap = zMalloc(sizeof(KidHeap));
    if (super->myHeap != NULL) {
        this->unk_68 = 1;
        RemoveInteractableObject(super);
        super->hitbox = NULL;
        sub_0806252C(this);
    }
}

void sub_0806252C(KidEntity* this) {
    s32 dx, dy;
    s32 i;

    KidHeapItem *heapPtr, item;

    // Copy from the player's position/state.
    item.FIELDS.x = gPlayerEntity.base.x.HALF_U.HI;
    item.FIELDS.y = gPlayerEntity.base.y.HALF_U.HI;
    item.FIELDS.z = gPlayerEntity.base.z.HALF_U.HI;
    item.FIELDS.framestate = gPlayerState.framestate;
    item.FIELDS.animationState = gPlayerEntity.base.animationState;
    item.FIELDS.collisionLayer = gPlayerEntity.base.collisionLayer;

    // Compute the distance between the kid and the player.
    dx = gPlayerEntity.base.x.HALF.HI - super->x.HALF.HI;
    dy = gPlayerEntity.base.y.HALF.HI - super->y.HALF.HI;

    // Divide it into KID_HEAP_COUNT increments.
    dx = FixedDiv(dx, KID_HEAP_COUNT);
    dy = FixedDiv(dy, KID_HEAP_COUNT);

    heapPtr = KID_HEAP;
    for (i = 0; i < KID_HEAP_COUNT; i++) {
        heapPtr->FIELDS.x = item.FIELDS.x - ((i * dx) >> 8);
        heapPtr->FIELDS.y = item.FIELDS.y - ((i * dy) >> 8);
        heapPtr->FIELDS.z = item.FIELDS.z;
        heapPtr->FIELDS.framestate = item.FIELDS.framestate;
        heapPtr->FIELDS.animationState = super->animationState;
        heapPtr->FIELDS.collisionLayer = super->collisionLayer;
        heapPtr++;
    }
}

void sub_08062634(Entity* this) {
    u32 a = this->type2;
    u32 b = (Random() & 1);
    MessageNoOverlap(gUnk_0810BDE8[a][b], this);
}

void sub_0806265C(KidEntity* this, ScriptExecutionContext* context) {
    if (gSave.global_progress == 0) {
        MessageNoOverlap(0, super);
    } else {
        const Dialog* pDialog = &gUnk_0810BE10[super->type * 9 - 1];
        pDialog += gSave.global_progress;
        ShowNPCDialogue(super, pDialog);
    }
}

void sub_08062698(Entity* this) {
    this->speed = (Random() & 0x3f) + 0xc0;
}

void sub_080626AC(Entity* this) {
    this->timer = (Random() & 0x1f) + 64;
}

void sub_080626C0(Entity* this, ScriptExecutionContext* context) {
    context->condition = 0;
    if ((this->timer != 0) && (--this->timer == 0)) {
        context->condition = 1;
    }
}

void sub_080626E0(Entity* this, ScriptExecutionContext* context) {
    // TODO second parameter might be anything as this function does not seem to be called?
    s16 sVar1;
    s32 uVar4;

    if (context->unk_18 == 0) {
        context->unk_18++;
        context->unk_19 = 10;
        context->postScriptActions |= 2;
        sVar1 = *(s16*)&context->intVariable;
        context->x.HALF.HI = gRoomControls.origin_x + *((u16*)&context->intVariable + 1);
        context->y.HALF.HI = gRoomControls.origin_y + sVar1;
    }
    if (--context->unk_19 == 0) {
        context->unk_19 = 10;
        uVar4 =
            CalculateDirectionFromOffsets(context->x.HALF.HI - this->x.HALF.HI, context->y.HALF.HI - this->y.HALF.HI);
        this->direction = (u8)uVar4;
        uVar4 = Random();
        this->direction = (this->direction + uVar4 % 0xb) - 5;
    }
    LinearMoveAngle(this, (s32)this->speed, (u32)this->direction);
    if ((u32)((this->x.HALF.HI - context->x.HALF.HI) * 0x100 + ((s32)((u32)(u16)this->speed << 0x10) >> 0x11)) <=
        (u32)(s32)this->speed) {
        this->x.HALF.HI = context->x.HALF.HI;
    } else {
        gActiveScriptInfo.commandSize = 0;
    }
}

void sub_08062788(Entity* this, ScriptExecutionContext* context) {
    SetTile(SPECIAL_TILE_114, TILE_POS(11, 24), LAYER_BOTTOM);
    SetTile(SPECIAL_TILE_114, TILE_POS(12, 24), LAYER_BOTTOM);
    SetTile(SPECIAL_TILE_114, TILE_POS(13, 24), LAYER_BOTTOM);
    SetTile(SPECIAL_TILE_114, TILE_POS(11, 25), LAYER_BOTTOM);
    SetTile(SPECIAL_TILE_114, TILE_POS(12, 25), LAYER_BOTTOM);
    SetTile(SPECIAL_TILE_114, TILE_POS(13, 25), LAYER_BOTTOM);
}

void sub_080627E8(Entity* this, ScriptExecutionContext* context) {
    RestorePrevTileEntity(TILE_POS(11, 24), LAYER_BOTTOM);
    RestorePrevTileEntity(TILE_POS(12, 24), LAYER_BOTTOM);
    RestorePrevTileEntity(TILE_POS(13, 24), LAYER_BOTTOM);
    RestorePrevTileEntity(TILE_POS(11, 25), LAYER_BOTTOM);
    RestorePrevTileEntity(TILE_POS(12, 25), LAYER_BOTTOM);
    RestorePrevTileEntity(TILE_POS(13, 25), LAYER_BOTTOM);
}

void Kid_Head(Entity* this) {
    u32 uVar2;
    u32 uVar3;
    u32 uVar4;
    u32 uVar5;
    const FrameStruct* ptr;

    ptr = &gUnk_0810C0A0[this->type * 2];
    uVar3 = ((u8)this->frame & 0x1f) + ptr->frame;
    uVar4 = (this->frameIndex & 0x1f) + ptr->frameIndex;
    switch (this->type) {
        case 0:
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
            uVar2 = (this->frameSpriteSettings & 0x30) >> 4;
            if (uVar2 != 0) {
                uVar2 = uVar2 + 0x50;
            }
            uVar2--;
            SetExtraSpriteFrame(this, 0, uVar3);
            SetExtraSpriteFrame(this, 1, uVar4);
            SetExtraSpriteFrame(this, 2, uVar2);
            SetSpriteSubEntryOffsetData1(this, 1, 0);
            SetSpriteSubEntryOffsetData2(this, 1, 2);
            sub_0807000C(this);
            break;
        case 6:
            uVar5 = this->frameSpriteSettings & 0xf;
            if ((this->frameSpriteSettings & 0xf) != 0) {
                uVar5 = uVar5 + 0x93;
            }
            SetExtraSpriteFrame(this, 0, uVar5 - 1);
            SetExtraSpriteFrame(this, 1, uVar3);
            SetExtraSpriteFrame(this, 2, uVar4);
            SetSpriteSubEntryOffsetData1(this, 2, 1);
            SetSpriteSubEntryOffsetData2(this, 1, 0);
            sub_0807000C(this);
            break;
        case 7:
        case 8:
            SetExtraSpriteFrame(this, 0, uVar3);
            SetExtraSpriteFrame(this, 1, uVar4);
            SetSpriteSubEntryOffsetData1(this, 1, 0);
            sub_0807000C(this);
            break;
        default:
            break;
    }
}

void sub_08062948(KidEntity* this, ScriptExecutionContext* context) {
    s32 bVar1;
    u16 uVar2;
    u32 uVar3;
    s32 iVar4;

    if (context->unk_18 == 0) {
        context->unk_18++;
        context->unk_12 = (Random() & 0x3f) + 0x20;
        uVar3 = Random() & 0x18;
        switch (super->direction) {
            case 0:
                if (uVar3 == 0x10) {
                    uVar3 = 8;
                }
                break;
            case 0x8:
                if (uVar3 == 0x18) {
                    uVar3 = 0x10;
                }
                break;
            case 0x10:
                if (uVar3 == 0) {
                    uVar3 = 0x18;
                }
                break;
            case 0x18:
                if ((uVar3 == 8)) {
                    uVar3 = 0;
                }
        }

        super->direction = (u8)uVar3;
        super->animationState = GetAnimationStateForDirection8(uVar3);
        super->speed = 0x80;
    }
    uVar3 = (super->animationState >> 1) + 4;
    if (uVar3 != super->animIndex) {
        InitializeAnimation(super, uVar3);
        this->unk_80 = (u16)super->animIndex;
    }
    ProcessMovement0(super);
    iVar4 = super->x.HALF.HI - (s16)this->unk_6c;
    if (0x10 < iVar4) {
        super->x.HALF.HI = this->unk_6c + 0x10;
        context->unk_12 = 1;
    }
    if (iVar4 < -0x10) {
        super->x.HALF.HI = this->unk_6c - 0x10;
        context->unk_12 = 1;
    }
    iVar4 = super->y.HALF.HI - (s16)this->unk_6e;
    if (0x10 < iVar4) {
        super->y.HALF.HI = this->unk_6e + 0x10;
        context->unk_12 = 1;
    }
    if (iVar4 < -0x10) {
        super->y.HALF.HI = this->unk_6e - 0x10;
        context->unk_12 = 1;
    }
    if (--context->unk_12 != 0) {
        gActiveScriptInfo.commandSize = 0;
    }
}

void Kid_MakeInteractable(KidEntity* this, ScriptExecutionContext* context) {
    this->fusionOffer = GetFusionToOffer(super);
    AddInteractableWhenBigFuser(super, this->fusionOffer);
}

void Kid_Fusion(Entity* this) {
    u32 tmp;
    if (this->action == 0) {
        if (LoadExtraSpriteData(this, gUnk_0810BDC4[this->type])) {
            this->action = this->action + 1;
            this->spriteSettings.draw = 1;
            this->y.HALF.HI = this->y.HALF.HI + -8;
            tmp = 6;
            if (this->type == 6) {
                tmp = 0x16;
            }
            InitializeAnimation(this, tmp);
        }
    } else {
        GetNextFrame(this);
    }
}

// TODO does this belong to child or next, unused entity?
extern void (*const gUnk_0810C268[])(Entity*);

void sub_08062AB8(Entity* this) {
    gUnk_0810C268[this->action](this);
}

void sub_08062AD0(Entity* this) {
}

void sub_08062AD4(Entity* this) {
}
