#include "global.h"
#include "entity.h"
#include "functions.h"
#include "room.h"

extern u32 sub_08091DDC(Entity*);
extern u32 sub_080002B4(Entity*, u32, u32);
extern u32 sub_08007DD6(u32, u32);
extern void sub_08017744(Entity*);
extern u32 sub_080002B8(Entity*);
extern void sub_08091C0C(Entity*);

typedef struct {
    u16 field_0x0;
    u16 field_0x2;
    u8 field_0x4;
    u8 field_0x5;
    u8 field_0x6;
    u8 field_0x7;
} struct_030010EC;

extern void (*const gUnk_081223A8[])(Entity*);

extern struct_030010EC gUnk_030010EC[];
extern BoundingBox gUnk_080FD310;

extern const s8 gUnk_081223C8[];
extern const u32 gUnk_081223D8[];

void Minecart(Entity* this) {
    gUnk_081223A8[this->action](this);
    this->bitfield = 0;
}

void sub_080916EC(Entity* this) {
    struct_030010EC* unk = &gUnk_030010EC[this->actionDelay];

    *(struct_030010EC**)&this->cutsceneBeh.HWORD = unk;
    if ((gRoomControls.roomID != unk->field_0x4) || (gPlayerState.flags.all & 0x1000) != 0) {
        DeleteThisEntity();
    }
    this->x.HALF.HI = gRoomControls.roomOriginX + ((unk->field_0x0 & 0x3f) << 4) + 8;
    this->y.HALF.HI = gRoomControls.roomOriginY + ((unk->field_0x0 & 0xfc << 4) >> 2) + 8;
    this->animationState = unk->field_0x5;
    this->entityType.parameter = unk->field_0x6;
    this->action = 1;
    this->boundingBox = &gUnk_080FD310;
    this->flags |= 0x80;
    this->damageType = 1;
    this->field_0x3c = 0x47;
    this->field_0x40 = 0x44;
    this->flags2 = 0x80;
    this->direction = DirectionFromAnimationState(this->animationState);
    this->nonPlanarMovement = 0x700;
    this->spritePriority.b1 = 3;
    InitAnimationForceUpdate(this, this->entityType.parameter + 4 + this->animationState);
    SetTile(0x4022, COORD_TO_TILE(this), this->collisionLayer);
}

void sub_080917DC(Entity* this) {

    if ((this->bitfield & 0x7f) == 0x1d) {
        this->field_0x20 = 0x2a000;
        this->action = 7;
        InitAnimationForceUpdate(this, this->entityType.parameter + 4 + this->animationState);
        PlaySFX(0x13b);
    } else {
        if (sub_0800445C(this) != 0) {
            if (((gPlayerState.flags.all & 0x40080) == 0) && (gPlayerState.field_0x1c == 0) &&
                (gPlayerState.heldObject == 0) && (gPlayerState.jumpStatus == 0)) {
                this->actionDelay++;
            } else {
                this->actionDelay = 0;
            }
        } else {
            this->actionDelay = 0;
        }
        if ((this->entityType).parameter == 0) {
            if (8 < this->actionDelay) {
                this->action = this->action + 1;
                gPlayerState.jumpStatus = 0x81;
                gPlayerState.flags.all |= 0x4000000;
                gPlayerEntity.field_0x20 = 0x20000;
                gPlayerEntity.nonPlanarMovement = 0x100;
                gPlayerEntity.flags &= 0x7f;
                ResetPlayer();
                sub_0807A108();
                PlaySFX(0x7c);
            }
        } else {
            this->actionDelay = 0;
        }
    }
}

void sub_080918A4(Entity* this) {
    if (sub_080041A0(this, &gPlayerEntity, 2, 2) != 0) {
        gPlayerEntity.x.HALF.HI = this->x.HALF.HI;
        gPlayerEntity.y.HALF.HI = this->y.HALF.HI;
        if (gPlayerEntity.height.HALF.HI > -0x10) {
            if ((s32)gPlayerEntity.field_0x20 > -1) {
                return;
            }
            gPlayerEntity.animationState = this->animationState << 1;
            gPlayerState.flags.all = (gPlayerState.flags.all ^ 0x4000000) | 0x1000;
            this->action++;
            this->field_0xf = 1;
            this->flags |= 0x20;
            this->damageType = 0x97;
            this->field_0x3c = (gPlayerEntity.field_0x3c + 1) | 0x20;
            this->flags2 = gPlayerEntity.flags2;
            this->field_0x40 = 0x18;
            this->field_0x44 = 8;
            sub_0801766C(this);
            sub_0807BA8C(COORD_TO_TILE(this), this->collisionLayer);
            PlaySFX(0x137);
        }
    } else {
        gPlayerEntity.direction = GetFacingDirection(&gPlayerEntity, this);
    }
    if (gPlayerEntity.field_0x20 < 0) {
        gPlayerEntity.spritePriority.b0 = this->spritePriority.b0 - 1;
    }
}

void sub_080919AC(Entity* this) {
    u32 iVar2;
    u32 uVar3;

    gRoomControls.unk5 = 7;
    if ((gPlayerState.flags.all & 0x1000) == 0) {
        this->action = 1;
        return;
    }

    if ((gPlayerEntity.frames.all & 0xf) == 0) {
        this->flags = this->flags & 0x7f;
        CopyPosition(this, &gPlayerEntity);
        if ((gPlayerEntity.frames.all & 0xf0) == 0x10) {
            this->spriteOffsetY = 1;
        } else {
            this->spriteOffsetY = 0;
        }
    } else {
        this->flags = this->flags | 0x80;
        gPlayerEntity.nonPlanarMovement = 0;
        sub_0806F69C(this);
        CopyPosition(this, &gPlayerEntity);
        gPlayerEntity.spritePriority.b0 = this->spritePriority.b0 - 1;
        if (!sub_08091DDC(this)) {
            if ((gScreenTransition.frameCount & 0xf) == 0) {
                PlaySFX(0x138);
            }

            if (--this->field_0xf == 0xff) {
                PlaySFX(0x7b);
                this->field_0xf = 0x3c;
            }

            uVar3 = sub_080002B4(this, gUnk_081223C8[this->animationState * 2],
                                 gUnk_081223C8[this->animationState * 2 + 1]);
            iVar2 = sub_08007DD6(uVar3, gUnk_081223D8[this->animationState]);
            if (iVar2 == 0) {
                this->direction = this->direction ^ 0x10;
                this->animationState = this->animationState ^ 2;
            } else {
                switch (uVar3) {
                    case 0x64:
                        this->flags = this->flags & 0xdf;
                        this->damageType = 1;
                        this->field_0x3c = 0x47;
                        this->field_0x40 = 0x44;
                        this->flags2 = 0x80;
                        this->action = 6;
                        sub_08017744(this);
                        gPlayerState.jumpStatus = 0x41;
                        gPlayerState.flags.all = (gPlayerState.flags.all ^ 0x1000) | 0x4000000;
                        gPlayerEntity.field_0x20 = 0x20000;
                        gPlayerEntity.nonPlanarMovement = 0x200;
                        gPlayerEntity.animationState = this->animationState << 1;
                        gPlayerEntity.direction = this->direction;
                        gPlayerEntity.flags |= 0x80;
                        sub_08004168(this);
                        InitAnimationForceUpdate(this, this->animationState + 0xc);
                        PlaySFX(0x78);
                        PlaySFX(0x139);
                        return;
                    case 0x67:
                    case 0x68:
                    case 0x69:
                    case 0x6a:
                    case 0x6c:
                    case 0x6d:
                    case 0x6e:
                    case 0x6f:
                        if (uVar3 == sub_080002B8(this)) {
                            sub_08091C0C(this);
                            gPlayerEntity.animationState = this->animationState << 1;
                            return;
                        }
                        break;
                }
            }

            gPlayerEntity.animationState = this->animationState << 1;
            if (this->animIndex == this->animationState) {
                UpdateAnimationSingleFrame(this);
            } else {
                InitAnimationForceUpdate(this, this->animationState);
            }
        }
    }
}
