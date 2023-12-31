/**
 * @file cameraTarget.c
 * @ingroup Objects
 *
 * @brief Camera Target object
 */
#include "common.h"
#include "entity.h"
#include "functions.h"
#include "kinstone.h"
#include "message.h"

// typedef struct {
//     Entity base;
//     u8 filler[0x18];
//     u16 tilePos;
// } BenchEntity;

extern void sub_080ADDD8(u32, u32);
void sub_080838DC(Entity*);
void sub_08083A40(Entity*);
void CameraTarget_Init(Entity*);
void CameraTarget_Action1(Entity*);
void CameraTarget_Action2(Entity*);

#ifdef EU
static const s32 gUnk_0811F744[] = {
    0x00027940,
    0x00027B40,
    0x00027D40,
    0x00027F40,
};
#else
static const s32 gUnk_0811F744[] = {
    0x00027980,
    0x00027B80,
    0x00027D80,
    0x00027F80,
};
#endif

void CameraTarget(Entity* this) {
    static void (*const gUnk_0811F754[])(Entity*) = {
        CameraTarget_Init,
        CameraTarget_Action1,
        CameraTarget_Action2,
    };

    u32 uVar2 = gPlayerState.field_0x27[0] > 0;

    switch (gFuseInfo.fusionState) {
        case FUSION_STATE_0:
        case FUSION_STATE_1:
        case FUSION_STATE_2:
            if ((gMessage.state & MESSAGE_ACTIVE) == 0) {
                break;
            }
        default:
            if (gPossibleInteraction.currentObject->kinstoneId == KINSTONE_32) {
                if (CheckKinstoneFused(KINSTONE_32) == 0) {
                    uVar2 = 0;
                    break;
                }
            }
            uVar2 = 1;
            break;
    }

    if (uVar2) {
        sub_080838DC(this);
    }
    gUnk_0811F754[this->action](this);
}

void sub_080838DC(Entity* this) {
    this->spriteSettings.draw = 0;
    this->spriteOrientation.flipY = 1;
    this->spriteRendering.b3 = 0;
    this->spritePriority.b0 = 0;
    this->timer = 4;
    this->child = NULL;
    this->action = 0;
}

void CameraTarget_Init(Entity* this) {
    if (this->spriteAnimation[0] != 1) {
        LoadSwapGFX(this, 1, 1);
        this->spriteVramOffset -= 0x10;
#ifdef EU
        sub_080ADDD8(1, 0x10277e0);
#else
        sub_080ADDD8(1, 0x1027820);
#endif
        sub_080838DC(this);
    }
    this->action = 1;
    this->flags |= ENT_PERSIST;
    SetEntityPriority(this, 6);
}

void CameraTarget_Action1(Entity* this) {
    if (this->timer) {
        this->timer--;
    } else {
        if ((gPossibleInteraction.currentObject->entity != NULL) &&
            ((u8)(gPossibleInteraction.currentObject->kinstoneId - 1) < 100)) {
            this->child = gPossibleInteraction.currentObject->entity;
            this->interactType = gPossibleInteraction.currentIndex;
            sub_08083A40(this);
        }
    }
}

void CameraTarget_Action2(Entity* this) {
    u32 bVar1;
    u32 bVar2;
    u32 bVar3;
    u32 temp;
    u32 temp2;
    const KinstoneWorldEvent* ptr;

    if ((this->type != 1) && (((u8)(gPossibleInteraction.currentObject->kinstoneId - 1) >= 100 ||
                               (this->child != gPossibleInteraction.currentObject->entity)))) {
        sub_080838DC(this);
    } else {
        this->x = this->child->x;
        this->y = this->child->y;
        this->z = this->child->z;
        if (this->frame == 1) {
            this->frame = 0;
            if (this->type == 0) {
                bVar2 = gPossibleInteraction.currentObject->kinstoneId;
            } else {
                bVar2 = this->type2;
            }
            ptr = gKinstoneWorldEvents + bVar2;
            bVar1 = ptr->bubbleIcon;
            bVar3 = bVar1 & 1;
            this->palette.b.b0 = bVar3;
            temp = gUnk_0811F744[bVar1] < 0;
            temp2 = (gUnk_0811F744[bVar1] & 0xffffff) | temp;
            sub_080ADDD8(0, temp2 | 0x1000000);
        }
        GetNextFrame(this);
    }
}

void sub_08083A40(Entity* this) {
    u32 bVar1;

    this->spriteSettings.draw = 1;
    this->action = 2;
    if (this->child->x.HALF.HI > gPlayerEntity.base.x.HALF.HI) {
        bVar1 = 0;
        this->spriteOffsetX = 8;
    } else {
        bVar1 = 1;
        this->spriteOffsetX = -8;
    }
    this->spriteOffsetY = -18;
    InitializeAnimation(this, bVar1);
    CameraTarget_Action2(this);
}
