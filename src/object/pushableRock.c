/**
 * @file pushableRock.c
 * @ingroup Objects
 *
 * @brief Pushable Rock object
 */
#define NENT_DEPRECATED
#include "functions.h"
#include "object.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unk_68[8];
    /*0x70*/ u16 tileIndex;
    /*0x72*/ u8 unk_72;
    /*0x73*/ u8 unk_73;
    /*0x74*/ u16 tilePosition;
    /*0x76*/ u8 unk_76[0x10];
    /*0x86*/ u16 pushedFlag;
} PushableRockEntity;

extern void (*const PushableRock_Actions[])(PushableRockEntity*);
extern const u16 PushableRock_Speeds[];

void sub_0808A644(PushableRockEntity*);

void PushableRock(PushableRockEntity* this) {
    PushableRock_Actions[super->action](this);
}

void PushableRock_Init(PushableRockEntity* this) {
    super->spriteSettings.draw = 1;
    super->action++;
    super->spriteRendering.b3 = 2;
    super->spritePriority.b0 = 4;
    super->spritePriority.b1 = 3;
    sub_0808A644(this);
}

void PushableRock_Action1(PushableRockEntity* this) {
    u32 tileType;
    u32 tmp;

    tileType = GetTileType(this->tilePosition, super->collisionLayer);
    switch (tileType) {
        case 0x401c:
        case 0x401d:
        case 0x401e:
        case 0x401f:
            tmp = (tileType - 0x1c);
            super->animationState = tmp * 2;
            super->direction = tmp * 8;
            if ((u8)(tmp * 2) == 2) {
                super->spriteSettings.flipX = 1;
            } else {
                super->spriteSettings.flipX = 0;
            }
            SetTile(this->tileIndex, this->tilePosition, super->collisionLayer);
            super->action = 2;
            InitializeAnimation(super, (super->animationState >> 1) + 1);
            EnqueueSFX(SFX_10F);
            break;
        default:
            if (super->animIndex) {
                InitializeAnimation(super, 0);
            }
            break;
    }
}

void PushableRock_Action2(PushableRockEntity* this) {
    sub_0800445C(super);
    super->speed = PushableRock_Speeds[super->frame & 0xf];
    LinearMoveUpdate(super);
    GetNextFrame(super);
    if (super->frame & ANIM_DONE) {
        super->action = 0;
    }
}

void PushableRock_Action3(PushableRockEntity* this) {
    if ((super->frame & ANIM_DONE) == 0) {
        GetNextFrame(super);
    } else {
        super->spritePriority.b0 = 7;
    }
}

void sub_0808A644(PushableRockEntity* this) {
    u32 tmp;
    this->tilePosition = COORD_TO_TILE(super);
    this->tileIndex = GetTileIndex(this->tilePosition, super->collisionLayer);
    this->unk_72 = sub_080B1B44(this->tilePosition, super->collisionLayer);
    tmp = sub_080B1AE0(this->tilePosition, super->collisionLayer);
    if ((tmp == 0x19) || (tmp == 0xf0)) {
        SetTile(0x4015, this->tilePosition, super->collisionLayer);
        super->action = 3;
        if (!CheckFlags(this->pushedFlag)) {
            SetFlag(this->pushedFlag);
            SoundReq(SFX_TASK_COMPLETE);
            InitializeAnimation(super, 5);
        } else {
            InitializeAnimation(super, 6);
        }
    } else {
        SetTile(0x401b, this->tilePosition, super->collisionLayer);
    }
}

void (*const PushableRock_Actions[])(PushableRockEntity*) = {
    PushableRock_Init,
    PushableRock_Action1,
    PushableRock_Action2,
    PushableRock_Action3,
};
const u16 PushableRock_Speeds[] = {
    0,
    256,
    96,
    64,
};
