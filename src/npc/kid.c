#include "functions.h"
#include "message.h"
#include "npc.h"

extern s32 sub_080041E8(s32 x1, s32 y1, s32 x2, s32 y2);

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
void sub_080620F4(Entity*);
void sub_08062130(Entity*);
void sub_08062194(Entity*);
void (*const gUnk_0810BE0C[])(Entity*) = { sub_080620F4, sub_08062130, sub_08062194 };

void sub_08062194(Entity*);
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

void sub_080621AC(Entity*);
void sub_080622F4(Entity*);
void sub_0806265C(Entity*, ScriptExecutionContext*);
void sub_0806252C(Entity*);

typedef union {
     struct {
         s16 x;
         s16 y;
         s16 z;
         u8 framestate;
         u8 animationState : 6;
         u8 collisionLayer : 2;
     } FIELDS;
     u64 DWORD;
 } KidHeapItem;

#define KID_HEAP_LEN 20
#define KID_HEAP ((KidHeapItem*)this->myHeap)

#define KID_HEAP_SHIFT_RIGHT(this, heapPtr)             \
        do {                                            \
            int i;                                      \
            heapPtr = ((KidHeapItem*)this->myHeap);     \
            heapPtr += (KID_HEAP_LEN - 2);              \
            for ( i = 0; i < (KID_HEAP_LEN - 1); i++) { \
                heapPtr[1] = heapPtr[0];                \
                heapPtr--;                              \
            }                                           \
        } while (0);

void Kid(Entity* this) {
    if ((this->flags & ENT_SCRIPTED) != 0) {
        sub_080621AC(this);
    } else {
        gUnk_0810BE0C[this->action](this);
    }
}

void sub_080620F4(Entity* this) {
    if (LoadExtraSpriteData(this, gUnk_0810BDC4[this->type])) {
        this->animationState = 4;
        this->field_0x68.HALF.LO = 0;
        this->action = 1;
        InitAnimationForceUpdate(this, 2);
        sub_08078778(this);
    }
}

void sub_08062130(Entity* this) {
    if (this->interactType != 0) {
        this->action = 2;
        InitAnimationForceUpdate(this, GetAnimationState(this));
    }
    if (this->subtimer++ >= 0x79) {
        this->subtimer = 0;
        this->timer = (this->timer + 1) & 7;
        if (this->type == 6) {
            this->timer = this->timer + 16;
        }
        InitAnimationForceUpdate(this, this->timer);
    } else {
        UpdateAnimationSingleFrame(this);
    }
    sub_0806ED78(this);
}

void sub_08062194(Entity* this) {
    MessageFromTarget(0);
    this->action = 1;
    this->interactType = 0;
}

void sub_080621AC(Entity* this) {
    u32 tmp;

    switch (this->action) {
        case 0:
            if (LoadExtraSpriteData(this, gUnk_0810BDC4[this->type])) {
                this->action = 1;
                this->animationState = this->timer;
                this->timer = 0;
                this->field_0x68.HALF.LO = 0;
                this->field_0x68.HALF.HI = 0;
                this->field_0x6a.HALF.HI = 0xff;
                tmp = sub_0805ACC0(this);
                if (tmp == 0) {
                    this->field_0x6c.HWORD = this->x.HALF.HI;
                    this->field_0x6e.HWORD = this->y.HALF.HI;
                } else {
                    this->field_0x6c.HWORD = tmp >> 0x10;
                    this->field_0x6e.HWORD = tmp;
                }
                sub_0807DD50(this);
            }
            break;
        case 1:
            if (this->interactType == 2) {
                this->action = 3;
                this->interactType = 0;
                sub_0806F118(this);
            } else {
                if ((s8)this->field_0x68.HALF.LO != 0) {
                    if (this->interactType != 0) {
                        this->action = 2;
                        this->interactType = 0;
                    } else {
                        sub_080622F4(this);
                        return;
                    }
                } else {
                    sub_0807DD94(this, NULL);
                    if (this->interactType != 0) {
                        this->action = 2;
                        this->interactType = 0;
                    } else {
                        return;
                    }
                }
                sub_0806265C(this, *(ScriptExecutionContext**)&this->cutsceneBeh);
                tmp = this->animIndex;
            }
            this->field_0x6a.HALF.HI = this->animIndex;
            if (this->animIndex < 8) {
                InitializeAnimation(this, (this->animIndex & 0xfffffffc) +
                                              sub_0806F5A4(GetFacingDirection(this, &gPlayerEntity)));
            }
            break;
        case 2:
            GetNextFrame(this);
            if ((gMessage.doTextBox & 0x7f) == 0) {
                this->action = 1;
            }
            break;
        case 3:
            if (UpdateFuseInteraction(this) != 0) {
                this->action = 1;
            }
            break;
        default:
            break;
    }
}

 /* This subroutine handles something to do with following.
  * It maintains a FIFO of positions based on the player. */
 void sub_080622F4(Entity* this) {
     s32 dx;
     s32 dy;
     s32 dist;

     u32 animIndex; // used as 2nd param of InitAnimationForceUpdate
     u32 animIndexTmp;

     KidHeapItem *heapPtr;
     KidHeapItem item;

     // Prepended heap item is initialized from player's current state.
     item.FIELDS.x = gPlayerEntity.x.HALF_U.HI;
     item.FIELDS.y = gPlayerEntity.y.HALF_U.HI;
     item.FIELDS.z = gPlayerEntity.z.HALF_U.HI;
     item.FIELDS.framestate = gPlayerState.framestate;
     item.FIELDS.animationState = gPlayerEntity.animationState;
     item.FIELDS.collisionLayer = gPlayerEntity.collisionLayer;

     heapPtr = this->myHeap;
     if (heapPtr->FIELDS.framestate == 0x16 && item.FIELDS.framestate != 0x16) {
         dx = this->x.HALF.HI - gPlayerEntity.x.HALF.HI;
         dy = this->y.HALF.HI - gPlayerEntity.y.HALF.HI;

         if (dx < 0)
             dx = -dx;
         if (dy < 0)
             dy = -dy;

         if (dx > 120 || dy > 80) {
             this->field_0x68.HALF.LO = 0;
             return;
         }

         sub_0806252C(this);
     }

     animIndex = 0;

     if (item.DWORD != heapPtr->DWORD) {
         KID_HEAP_SHIFT_RIGHT(this, heapPtr);
         heapPtr = KID_HEAP;
         heapPtr[0] = item;

         animIndex = 0x4;
         if ((s8)this->field_0x68.HALF.HI > 0) {
             this->field_0x68.HALF.HI = this->field_0x68.HALF.HI - 1;
         }
     } else {
         heapPtr += KID_HEAP_LEN - 1;
         if (heapPtr->FIELDS.z < 0) {
             KID_HEAP_SHIFT_RIGHT(this, heapPtr);
             animIndex = 0x4;
         } else {
             dist = sub_080041E8(gPlayerEntity.x.HALF.HI, gPlayerEntity.y.HALF.HI, (u16)heapPtr->FIELDS.x,
                                 (u16)heapPtr->FIELDS.y);
             dist = ((u32)dist) >> 0x4;
             if (dist > 0x18) {

                 KID_HEAP_SHIFT_RIGHT(this, heapPtr);
                 animIndex = 0x4;
             }
         }
     }
     heapPtr = (KidHeapItem *)this->myHeap;
     heapPtr += +KID_HEAP_LEN - 1;
     this->x.HALF.HI = heapPtr->FIELDS.x;
     this->y.HALF.HI = heapPtr->FIELDS.y;
     this->z.HALF.HI = heapPtr->FIELDS.z;
     this->animationState = heapPtr->FIELDS.animationState;
     this->collisionLayer = heapPtr->FIELDS.collisionLayer;

     if (((s8)this->field_0x68.HALF.HI) > 0) {
         this->field_0x68.HALF.HI = this->field_0x68.HALF.HI - 1;
     }

     animIndexTmp = animIndex;
     animIndex += this->animationState >> 1;
     if (this->type == OBJECT) {
         animIndex += 0x10;
     }

     if (!(animIndex == this->animIndex || (animIndexTmp == 0 && ((s8)this->field_0x68.HALF.HI) > 0))) {
         InitAnimationForceUpdate(this, animIndex);
         this->field_0x68.HALF.HI = 0x1e;
     } else {
         UpdateAnimationSingleFrame(this);
     }

     sub_0800451C(this);
     return;
 }

void sub_08062500(Entity* this) {
    this->myHeap = zMalloc(sizeof(KidHeapItem[20]));
    if (this->myHeap != NULL) {
        this->field_0x68.HALF.LO = 1;
        sub_080788E0(this);
        this->hitbox = NULL;
        sub_0806252C(this);
    }
}

void sub_0806252C(Entity* this) {
    s16 sVar1;
    s16 sVar2;
    u16 uVar3;
    u8 uVar4;
    s16 sVar5;
    s16 sVar6;
    u8 bVar7;
    KidHeapItem* item;
    s32 loopVar;
    FORCE_REGISTER(u32 r5, r5);
    FORCE_REGISTER(u32 r6, r6);
    FORCE_REGISTER(u32 r0, r0);
    FORCE_REGISTER(u32 r1, r1);
    FORCE_REGISTER(u32 r2, r2);
    u32 r3;
    FORCE_REGISTER(s32 r8, r8);
    s32 y;
    s32 r10;
    FORCE_REGISTER(s32 x, r12);

    r1 = gPlayerEntity.x.HALF_U.HI;
    r3 = 0xffff0000;
    r0 = r3;
    r0 &= r5;
    r0 |= r1;

    r1 = gPlayerEntity.y.HALF_U.HI;
    r1 <<= 0x10;
    r2 = 0x0000ffff;
    r0 &= r2;
    r0 |= r1;
    r5 = r0;

    r0 = gPlayerEntity.z.HALF_U.HI;
    r3 &= r6;
    r3 |= r0;

    r0 = gPlayerState.framestate;
    r0 <<= 0x10;
    r2 = 0xff00ffff;
    r2 &= r3;
    r2 |= r0;

    r1 = gPlayerEntity.animationState;
    r0 = 0x3f;
    r1 &= r0;
    r1 <<= 0x18;
    r0 = 0xc0ffffff;
    r0 &= r2;
    r0 |= r1;

    r1 = gPlayerEntity.collisionLayer;
    r1 <<= 0x1e;
    r2 = 0x3fffffff;
    r0 &= r2;
    r0 |= r1;
    r6 = r0;

    r10 = r0 = gPlayerEntity.x.HALF.HI - this->x.HALF.HI;
    r8 = r0 = gPlayerEntity.y.HALF.HI - this->y.HALF.HI;

    r10 = FixedDiv(r10, KID_HEAP_LEN);
    r8 = FixedDiv(r8, KID_HEAP_LEN);
    item = (KidHeapItem*)this->myHeap;
    y = 0;
    x = 0;

    for (loopVar = KID_HEAP_LEN - 1; loopVar >= 0; loopVar--) {
        item->FIELDS.x = r5 - (x >> 8);
        item->FIELDS.y = (r5 >> 0x10) - (y >> 8);
        item->FIELDS.z = r6;
        item->FIELDS.framestate = r6 >> 0x10;
        item->FIELDS.animationState = this->animationState & 0x3f;
        item->FIELDS.collisionLayer = this->collisionLayer;
        item++;
        y = y + r8;
        x = x + r10;
    }
}

void sub_08062634(Entity* this) {
    u32 a = this->type2;
    u32 b = (Random() & 1);
    MessageNoOverlap(gUnk_0810BDE8[a][b], this);
}

void sub_0806265C(Entity* this, ScriptExecutionContext* context) {
    if (gSave.global_progress == 0) {
        MessageNoOverlap(0, this);
    } else {
        const Dialog* pDialog = &gUnk_0810BE10[this->type * 9 - 1];
        pDialog += gSave.global_progress;
        ShowNPCDialogue(this, pDialog);
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
        uVar4 = sub_080045DA(context->x.HALF.HI - this->x.HALF.HI, context->y.HALF.HI - this->y.HALF.HI);
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
    SetTile(0x4072, 0x60b, 1);
    SetTile(0x4072, 0x60c, 1);
    SetTile(0x4072, 0x60d, 1);
    SetTile(0x4072, 0x64b, 1);
    SetTile(0x4072, 0x64c, 1);
    SetTile(0x4072, 0x64d, 1);
}

void sub_080627E8(Entity* this, ScriptExecutionContext* context) {
    RestorePrevTileEntity(0x60b, 1);
    RestorePrevTileEntity(0x60c, 1);
    RestorePrevTileEntity(0x60d, 1);
    RestorePrevTileEntity(0x64b, 1);
    RestorePrevTileEntity(0x64c, 1);
    RestorePrevTileEntity(0x64d, 1);
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

void sub_08062948(Entity* this, ScriptExecutionContext* context) {
    s32 bVar1;
    u16 uVar2;
    u32 uVar3;
    s32 iVar4;

    if (context->unk_18 == 0) {
        context->unk_18++;
        context->unk_12 = (Random() & 0x3f) + 0x20;
        uVar3 = Random() & 0x18;
        switch (this->direction) {
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

        this->direction = (u8)uVar3;
        this->animationState = sub_0806F5B0(uVar3);
        this->speed = 0x80;
    }
    uVar3 = (this->animationState >> 1) + 4;
    if (uVar3 != this->animIndex) {
        InitializeAnimation(this, uVar3);
        this->field_0x80.HWORD = (u16)this->animIndex;
    }
    ProcessMovement0(this);
    iVar4 = this->x.HALF.HI - (s16)this->field_0x6c.HWORD;
    if (0x10 < iVar4) {
        this->x.HALF.HI = this->field_0x6c.HWORD + 0x10;
        context->unk_12 = 1;
    }
    if (iVar4 < -0x10) {
        this->x.HALF.HI = this->field_0x6c.HWORD - 0x10;
        context->unk_12 = 1;
    }
    iVar4 = this->y.HALF.HI - (s16)this->field_0x6e.HWORD;
    if (0x10 < iVar4) {
        this->y.HALF.HI = this->field_0x6e.HWORD + 0x10;
        context->unk_12 = 1;
    }
    if (iVar4 < -0x10) {
        this->y.HALF.HI = this->field_0x6e.HWORD - 0x10;
        context->unk_12 = 1;
    }
    if (--context->unk_12 != 0) {
        gActiveScriptInfo.commandSize = 0;
    }
}

void sub_08062A48(Entity* this, ScriptExecutionContext* context) {
    this->field_0x6a.HALF.LO = GetFusionToOffer(this);
    sub_08078784(this, this->field_0x6a.HALF.LO);
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
